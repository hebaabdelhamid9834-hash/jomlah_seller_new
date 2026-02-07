import 'package:active_ecommerce_seller_app/custom/localization.dart';
import 'package:active_ecommerce_seller_app/custom/route_transaction.dart';
import 'package:active_ecommerce_seller_app/helpers/shared_value_helper.dart';
import 'package:active_ecommerce_seller_app/my_theme.dart';
import 'package:active_ecommerce_seller_app/screens/chat_list.dart';
import 'package:active_ecommerce_seller_app/screens/coupon/coupons.dart';
import 'package:active_ecommerce_seller_app/screens/money_withdraw.dart';
import 'package:active_ecommerce_seller_app/screens/payment_history.dart';
import 'package:active_ecommerce_seller_app/screens/pos/pos_manager.dart';
import 'package:active_ecommerce_seller_app/screens/refund_request.dart';
import 'package:flutter/material.dart';

class FeatureItem {
  final bool visible;
  final String icon;
  final String title;
  final VoidCallback onTap;

  FeatureItem({
    required this.visible,
    required this.icon,
    required this.title,
    required this.onTap,
  });
}
class FeatureTile extends StatelessWidget {
  final FeatureItem item;

  const FeatureTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    if (!item.visible) return const SizedBox.shrink();

    return InkWell(
      onTap: item.onTap,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              item.icon,
              width: 22,
              height: 22,
            ),
            const SizedBox(height: 6),
            Flexible(
              child: Text(
                item.title,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  color: MyTheme.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class FeaturesList {
  final BuildContext context;

  FeaturesList(this.context);

  List<FeatureItem> get items => [
    FeatureItem(
      visible: pos_manager_activation.$,
      icon: 'assets/icon/pos_system.png',
      title: LangText(context: context).getLocal().pOS_Manager_UCF,
      onTap: () => MyTransaction(context: context).push(const PosManager()),
    ),
    FeatureItem(
      visible: conversation_activation.$,
      icon: 'assets/icon/chat.png',
      title: LangText(context: context).getLocal().messages_ucf,
      onTap: () => MyTransaction(context: context).push(ChatList()),
    ),
    FeatureItem(
      visible: refund_addon.$,
      icon: 'assets/icon/refund.png',
      title: LangText(context: context).getLocal().refund_requests_ucf,
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (_) => RefundRequest())),
    ),
    FeatureItem(
      visible: coupon_activation.$,
      icon: 'assets/icon/coupon.png',
      title: LangText(context: context).getLocal().coupons_ucf,
      onTap: () => MyTransaction(context: context).push(Coupons()),
    ),
    FeatureItem(
      visible: true,
      icon: 'assets/icon/withdraw.png',
      title: LangText(context: context).getLocal().money_withdraw_ucf,
      onTap: () => MyTransaction(context: context).push(MoneyWithdraw()),
    ),
    FeatureItem(
      visible: true,
      icon: 'assets/icon/payment_history.png',
      title: LangText(context: context).getLocal().payment_history_ucf,
      onTap: () => MyTransaction(context: context).push(PaymentHistory()),
    ),
  ];
}
