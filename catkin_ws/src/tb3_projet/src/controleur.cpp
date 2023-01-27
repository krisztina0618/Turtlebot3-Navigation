// LES FICHIERS EN-TETES
#include "pid.cpp"
#include "std_msgs/Float32.h"
#include "std_msgs/Int8.h"
#include <cmath>
#include <csignal>
#include <geometry_msgs/Pose2D.h>
#include <geometry_msgs/Twist.h>
#include <math.h>
#include <nav_msgs/Odometry.h>
#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <sensor_msgs/Range.h>
#include <std_msgs/Float64.h>
#include <std_msgs/String.h>
#include <stdio.h>
#include <tb3_projet_LAKHAL_MEZOUAR/LaserDirection.h>
#include <tf/tf.h>

tb3_projet_LAKHAL_MEZOUAR::LaserDirection var;
// LES NAMESPACES
using namespace ros;
using namespace std_msgs;
using namespace geometry_msgs;
using namespace sensor_msgs;
using namespace nav_msgs;

// LES CONSTANTES
#define MODE_CIRCULAIRE 1
#define MODE_RECTANGULAIRE 2
#define LINEAR_SPEED 0.8
#define ANGULAR_SPEED 0.8
#define FREQ_CONTROL 5.0 // hz
#define PERIODE_DE_CONTROLE 1 / FREQ_CONTROL
#define MAX_LINEAR_SPEED 0.15
#define MAX_ANGULAR_SPEED 2.84

#define CMD_LMAX MAX_LINEAR_SPEED
#define CMD_LMIN -MAX_LINEAR_SPEED

#define CMD_AMAX MAX_ANGULAR_SPEED
#define CMD_AMIN -MAX_ANGULAR_SPEED

#define Kp_pos 1.0
#define Kd_pos 0.0
#define Ki_pos 0.0

#define Kp_angle 1.0
#define Kd_angle 0.0
#define Ki_angle 0.0

float x_objectif = -1.0;
float y_objectif = 1.0;
float x_origine = 0.0;
float y_origine = 0.0;

// LES VARIABLES GLOBALES
int mode = 1;
Twist msg;
Publisher vel_pub;
Pose2D positions;
Publisher position2D_pub;
// Publisher obstacle_ind_pub;
Range distance;
std_msgs::Int8 key_B;

PID *pidDistance =
    new PID(PERIODE_DE_CONTROLE, CMD_LMAX, CMD_LMIN, Kp_pos, Kd_pos, Ki_pos);
////new PID(PERIODE_DE_CONTROLE, CMD_LMAX, CMD_LMIN, Kp_pos, Kd_pos, Ki_pos);
PID *pidAngle = new PID(PERIODE_DE_CONTROLE, CMD_AMAX, CMD_AMIN, Kp_angle,
                        Kd_angle, Ki_angle);

// pidDistance = new PID(PERIODE_DE_CONTROLE, CMD_MAX, CMD_MIN, Kp_pos, Kd_pos,
// Ki_pos);

// LES PROTOTYPES DE FONCTIONS
void sigintHandler(int sig);

// LES FONCTIONS ET LES CALLBACKS
void avancer(double lin_velx) {
  msg.linear.x = lin_velx;
  msg.linear.y = 0;
  msg.angular.z = 0;
  vel_pub.publish(msg);
}

void stop() {
  msg.linear.x = 0;
  msg.angular.z = 0;
  vel_pub.publish(msg);
}

void reculer(float lin_vel) {
  msg.linear.x = -lin_vel;
  msg.angular.z = 0;
  vel_pub.publish(msg);
}

void set_p() {
  if (msg.linear.x < 2) {
    msg.linear.x += 0.05;
    vel_pub.publish(msg);
    key_B.data = 118;
  }
}

void set_m() {
  if (msg.linear.x >= -2) {
    msg.linear.x -= 0.05;
    vel_pub.publish(msg);
    key_B.data = 118;
  }
}

void pivoter_droite(float ang_vel) {
  msg.angular.z = ang_vel;
  vel_pub.publish(msg);
  key_B.data = 118; //
}

void pivoter_gauche(float ang_vel) {
  msg.angular.z = -ang_vel;
  vel_pub.publish(msg);
  key_B.data = 118;
}

void pivoter(float ang_vel) {
  msg.angular.z = ang_vel;
  vel_pub.publish(msg);
  key_B.data = 118; //
}

float cal_delta_Theta(float _theta, float _theta0) {

  float theta, theta0, delta_theta;

  if (_theta < 0)
    theta = _theta + 2 * M_PI;
  else
    theta = _theta;

  if (_theta0 < 0)
    theta0 = _theta0 + 2 * M_PI;
  else
    theta0 = _theta0;

  delta_theta = theta - theta0;

  if (delta_theta < -M_PI) {
    delta_theta = delta_theta + 2 * M_PI;
  } else {
    if (delta_theta >= M_PI) {
      delta_theta = delta_theta - 2 * M_PI;
    }
  }
  return delta_theta;
}

void cmd_angle(double theta, double theta0) {
  float delta_angle = cal_delta_Theta(theta, theta0);
  double cmd_angulaire = pidAngle->calculate(delta_angle);
  pivoter(cmd_angulaire);
}

void cmd_lin(double x1, double x0) {
  double cmd_lineaire = pidDistance->calculate(x1, x0);
  // double cmd_lineaire2 = pidDistance2->calculate(y1, y0);
  avancer(cmd_lineaire);
}

void consignePos(double x1, double x0, double y1, double y0) {
  double angle = atan2((y1 - y0), (x1 - x0));
  cmd_angle(angle, positions.theta);
}

float quaternionToAngleEuler(Quaternion angle_quaternion) {
  float angle_Euler = tf::getYaw(angle_quaternion);
  return angle_Euler;
}

void drive(float lin_vel, float ang_vel) {}

void chatterCallback1(std_msgs::Int8 key_board) { key_B.data = key_board.data; }

void chatterCallback2(Odometry position) {
  positions.x = position.pose.pose.position.x;
  positions.y = position.pose.pose.position.y;
  positions.theta = quaternionToAngleEuler(position.pose.pose.orientation);
  position2D_pub.publish(positions);
}

void chatterCallback3(tb3_projet_LAKHAL_MEZOUAR::LaserDirection data) {
  var.FACE_GAUCHE = data.FACE_GAUCHE;
  var.FACE_DROITE = data.FACE_DROITE;
  var.GAUCHE_HAUT = data.GAUCHE_HAUT;
  var.GAUCHE_BAS = data.GAUCHE_BAS;
  var.ARRIERE_DROITE = data.ARRIERE_DROITE;
  var.ARRIERE_GAUCHE = data.ARRIERE_GAUCHE;
  var.DROITE_HAUT = data.DROITE_HAUT;
  var.DROITE_BAS = data.DROITE_BAS;
}

void target(float x, float y, float xorigine, float yorigine) {
  double angle = atan2((x - xorigine), (y - yorigine));
  double objectif = sqrt(pow(x - xorigine, 2) + pow(y - yorigine, 2));
  double current =
      sqrt(pow(positions.x - xorigine, 2) + pow(positions.y - yorigine, 2));

  cmd_angle(angle, positions.theta);
  if (fabs(positions.theta - angle) < 0.02) {
    stop();

    cmd_lin(objectif, current);

    if (fabs(x_objectif - positions.x) < 0.02 &&
        fabs(y_objectif - positions.y) < 0.02) {
      stop();
    }
  }
}

// cmd_angle(positions.theta, double theta0);

// MAIN DE L'APPLICATION

int main(int argc, char **argv) {
  signal(SIGINT, sigintHandler);
  init(argc, argv, "controleur", ros::init_options::NoSigintHandler);
  NodeHandle nh;

  vel_pub = nh.advertise<Twist>("/cmd_vel", 10);
  position2D_pub = nh.advertise<Pose2D>("/topic_position", 10);

  Subscriber key_board_sub =
      nh.subscribe("/keyboard_input", 1000, chatterCallback1);
  Subscriber position_sub = nh.subscribe("/odom", 1000, chatterCallback2);
  Subscriber laser_sub = nh.subscribe("/obstacle", 1000, chatterCallback3);

  Rate loop_rate(FREQ_CONTROL);
  stop();
  ros::Duration(2).sleep();
  int k = 0;
  while (ok()) {
    switch (key_B.data) {

    case (97):
      avancer(0.05);
      break;

    case (66):
      reculer(0.05);
      break;

    case (115):
      stop();
      break;

    case (112):
      set_p();

      break;
    case (109):
      set_m();
      break;

    case (100):
      pivoter_droite(0.5);
      break;

    case (103):
      pivoter_gauche(0.5);
      break;
    }

    if (mode == 1) {
      if (var.GAUCHE_HAUT <= 0.3) {
        // tourner à droite pour éviter l'obstacle
        ROS_INFO("Obstacle!!!!");
        stop();

        cmd_angle(positions.theta + 0.6, positions.theta);
        ros::Duration(2).sleep();
        avancer(0.1);
      }

      // vérifier s'il y a encore un obstacle
      if (var.DROITE_HAUT <= 0.3) {
        // tourner à gauche pour éviter l'obstacle
        ROS_INFO("Obstacle!!!!");
        stop();

        cmd_angle(positions.theta + 0.6, positions.theta);
        ros::Duration(2).sleep();
        avancer(0.1);
      }

      // continuer vers la position cible
      target(x_objectif, y_objectif, x_origine, y_origine);

      /* else {
         return 0;
       }*/
    }

    ROS_INFO("DROITE_HAUT = %.2f", var.DROITE_HAUT);
    ROS_INFO("GAUCHE_HAUT = %.2f", var.GAUCHE_HAUT);
    ROS_INFO("FACE_DROITE = %.2f", var.FACE_DROITE);
    ROS_INFO("FACE_GAUCHE = %.2f", var.FACE_GAUCHE);
    ROS_INFO("ARRIERE_DROITE = %.2f", var.ARRIERE_DROITE);
    ROS_INFO("ARRIERE_GAUCHE = %.2f", var.ARRIERE_GAUCHE);
    ROS_INFO("DROITE_BAS = %.2f", var.DROITE_BAS);
    ROS_INFO("GAUCHE_BAS = %.2f", var.GAUCHE_BAS);
    ROS_INFO("position x = %.2f", positions.x);
    ROS_INFO("position y = %.2f", positions.y);
    ROS_INFO("positions.theta   = %.2f", positions.theta);

    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}

void sigintHandler(int sig) {
  // Log quit
  ROS_INFO("Exiting program gracefully ...");
  stop();
  // Kill all open subscriptions, publications, service calls, and service
  // servers
  shutdown();
}
