// Generated by gencpp from file tb3_projet_LAKHAL_MEZOUAR/MoveResult.msg
// DO NOT EDIT!


#ifndef TB3_PROJET_LAKHAL_MEZOUAR_MESSAGE_MOVERESULT_H
#define TB3_PROJET_LAKHAL_MEZOUAR_MESSAGE_MOVERESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tb3_projet_LAKHAL_MEZOUAR
{
template <class ContainerAllocator>
struct MoveResult_
{
  typedef MoveResult_<ContainerAllocator> Type;

  MoveResult_()
    : reached(false)  {
    }
  MoveResult_(const ContainerAllocator& _alloc)
    : reached(false)  {
  (void)_alloc;
    }



   typedef uint8_t _reached_type;
  _reached_type reached;





  typedef boost::shared_ptr< ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator> const> ConstPtr;

}; // struct MoveResult_

typedef ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<std::allocator<void> > MoveResult;

typedef boost::shared_ptr< ::tb3_projet_LAKHAL_MEZOUAR::MoveResult > MoveResultPtr;
typedef boost::shared_ptr< ::tb3_projet_LAKHAL_MEZOUAR::MoveResult const> MoveResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tb3_projet_LAKHAL_MEZOUAR

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'tb3_projet_LAKHAL_MEZOUAR': ['/home/user/catkin_ws/src/tb3_projet_LAKHAL_MEZOUAR/msg', '/home/user/catkin_ws/devel/share/tb3_projet_LAKHAL_MEZOUAR/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "80204a6ff2622a7071680d5597cbd3aa";
  }

  static const char* value(const ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x80204a6ff2622a70ULL;
  static const uint64_t static_value2 = 0x71680d5597cbd3aaULL;
};

template<class ContainerAllocator>
struct DataType< ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tb3_projet_LAKHAL_MEZOUAR/MoveResult";
  }

  static const char* value(const ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Define the result\n\
bool reached\n\
";
  }

  static const char* value(const ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.reached);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tb3_projet_LAKHAL_MEZOUAR::MoveResult_<ContainerAllocator>& v)
  {
    s << indent << "reached: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reached);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TB3_PROJET_LAKHAL_MEZOUAR_MESSAGE_MOVERESULT_H
