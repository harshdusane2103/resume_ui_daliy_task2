

import 'package:flutter/material.dart';
import 'package:resume_ui_daliy_task/Home/home.dart';

class Approutes
{
  static Map<String,Widget Function(BuildContext)>routes=
  {
    '/':(context)=>homeScreen(),
  };
}

List iconlist=[
  {
    'icon':Icons.all_inbox,
    'text':'All Inboxes',
  },
  {
    'icon':Icons.inbox,
    'text':'Inbox',
  },
  {
    'icon':Icons.star_border,
    'text':'Starred',
  },
  {
    'icon':Icons.access_time_outlined,
    'text':'Snoozed',
  },
  {
    'icon':Icons.share_outlined,
    'text':'Sent',
  },
  {
    'icon':Icons.contact_page,
    'text':'Drafts',
  },
  {
    'icon':Icons.mail,
    'text':'All Mail',
  },
  {
    'icon':Icons.error_outline_outlined,
    'text':'Spam',
  },
  {
    'icon':Icons.delete,
    'text':'Trash',
  },
  {
    'icon':Icons.add,
    'text':'Create new',
  },
  {
    'icon':Icons.calendar_today_rounded,
    'text':'Calender',
  },
  {
    'icon':Icons.account_circle_outlined,
    'text':'Contects',
  },

  {
    'icon':Icons.settings,
    'text':'Settings',
  },
];


