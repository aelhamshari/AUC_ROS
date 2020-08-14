// Generated by gencpp from file light_robot/auc.msg
// DO NOT EDIT!


#ifndef LIGHT_ROBOT_MESSAGE_AUC_H
#define LIGHT_ROBOT_MESSAGE_AUC_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace light_robot
{
template <class ContainerAllocator>
struct auc_
{
  typedef auc_<ContainerAllocator> Type;

  auc_()
    : id(0)
    , name()
    , temperature(0.0)
    , humidity(0.0)  {
    }
  auc_(const ContainerAllocator& _alloc)
    : id(0)
    , name(_alloc)
    , temperature(0.0)
    , humidity(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef float _temperature_type;
  _temperature_type temperature;

   typedef float _humidity_type;
  _humidity_type humidity;





  typedef boost::shared_ptr< ::light_robot::auc_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::light_robot::auc_<ContainerAllocator> const> ConstPtr;

}; // struct auc_

typedef ::light_robot::auc_<std::allocator<void> > auc;

typedef boost::shared_ptr< ::light_robot::auc > aucPtr;
typedef boost::shared_ptr< ::light_robot::auc const> aucConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::light_robot::auc_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::light_robot::auc_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace light_robot

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'light_robot': ['/home/khaled/auc/Day4 /catkin_ws/src/light_robot/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::light_robot::auc_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::light_robot::auc_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::light_robot::auc_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::light_robot::auc_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::light_robot::auc_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::light_robot::auc_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::light_robot::auc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "16767b4b63fd3551b69c6c06672a0bf6";
  }

  static const char* value(const ::light_robot::auc_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x16767b4b63fd3551ULL;
  static const uint64_t static_value2 = 0xb69c6c06672a0bf6ULL;
};

template<class ContainerAllocator>
struct DataType< ::light_robot::auc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "light_robot/auc";
  }

  static const char* value(const ::light_robot::auc_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::light_robot::auc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
int32 id \n\
string name \n\
float32 temperature \n\
float32 humidity\n\
";
  }

  static const char* value(const ::light_robot::auc_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::light_robot::auc_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.name);
      stream.next(m.temperature);
      stream.next(m.humidity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct auc_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::light_robot::auc_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::light_robot::auc_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "temperature: ";
    Printer<float>::stream(s, indent + "  ", v.temperature);
    s << indent << "humidity: ";
    Printer<float>::stream(s, indent + "  ", v.humidity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIGHT_ROBOT_MESSAGE_AUC_H