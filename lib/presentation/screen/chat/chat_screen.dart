import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yes_no_app/presentation/widget/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widget/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widget/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://img.thedailybeast.com/image/upload/dpr_2.0/c_crop,h_3287,w_3287,x_170,y_0/c_limit,w_128/d_placeholder_euli9k,fl_lossy,q_auto/v1705005985/2023-12-04T210629Z_1908741347_RC2IQ4A6YZHR_RTRMADP_3_AWARDS-FASHION_u0j06m'),
          ),
        ),
        title: const Text('My Love ❤️'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
              },
            )),
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
