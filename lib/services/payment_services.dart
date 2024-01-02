import 'dart:convert';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;

class PaymentServices {
  final String stripeUrl = 'https://api.stripe.com';

  final String listAllPaymentIntents = '/v1/payment_intents';

  Future<void> payment() async {
    Map<String, dynamic> body = {
      'amount': 10000,
      'currency': 'INR',
    };

    var response = await http.post(
      Uri.parse(stripeUrl + listAllPaymentIntents),
      headers: {
        'Authorization':
            'Bearer sk_test_51ORzFqSHAEgZz9FW6UzXQ1EvRLGBlqOSYVb5hcaxR7IgrtaYzPvAJsT3u2cPUqx1Fh0quXaEfIOfJPnvZqmjHXNO00VKUXGdcH',
        'Content-type': 'application/x-www-form-urlencoded',
      },
      body: body,
    );

    var paymentIntent = json.decode(response.body);

    print(paymentIntent);

    initiatePayment(paymentIntent);
  }

  Future<void> initiatePayment(paymentIntent) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: const SetupPaymentSheetParameters(
        // Set to true for custom flow
        customFlow: false,
        // Main params
        merchantDisplayName: 'Stripe Demo',
        paymentIntentClientSecret: "data['paymentIntent']",
        // Customer keys
        customerEphemeralKeySecret: "data['ephemeralKey']",
        customerId: 'aha_001',
        // customerId: data['customer'],
        // Extra options
        applePay: const PaymentSheetApplePay(
          merchantCountryCode: 'US',
        ),
        googlePay: const PaymentSheetGooglePay(
          merchantCountryCode: 'US',
          testEnv: true,
        ),
      ),
    );
  }
}
