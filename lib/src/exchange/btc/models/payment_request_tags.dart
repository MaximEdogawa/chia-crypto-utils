import 'package:chia_crypto_utils/chia_crypto_utils.dart';
import 'package:chia_crypto_utils/src/exchange/btc/models/fallback_address.dart';
import 'package:chia_crypto_utils/src/exchange/btc/models/routing_info.dart';

class PaymentRequestTags {
  // according to Bolt #11 protocol, tagged fields are optional

  PaymentRequestTags({
    this.paymentHash,
    this.paymentSecret,
    this.routingInfo,
    this.featureBits,
    this.expirationTime,
    this.fallbackAddress,
    this.description,
    this.payeePublicKey,
    this.purposeCommitHash,
    this.minFinalCltvExpiry,
    this.metadata,
    this.unknownTags,
  });

  Bytes? paymentHash;
  Bytes? paymentSecret;
  List<RouteInfo>? routingInfo;
  int? featureBits;
  int? expirationTime;
  FallbackAddress? fallbackAddress;
  String? description;
  Bytes? payeePublicKey;
  Bytes? purposeCommitHash;
  int? minFinalCltvExpiry;
  Bytes? metadata;
  Map<int, dynamic>? unknownTags;
}