Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EFD6A9D5
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:45:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=euHPNr8DR//llH8vk+kgRB1IdyOZsEgtHzDK9LBhw2Y=; b=JAo5IPkvtXfER7
	gQHl4RP5swRwUt8ePkpg3/HDy12/hqVtiRqfttRhpxn73brQO+lq0WGeA8m/MLNvJEEg23lpwwwmH
	hVt6bGL7hO7Q4rnqZQl6naxZkcdKEUQipOd7nIW3Orbo3hzeFvliKVP4pN4lxsNLs8/Jmrf1N2LRP
	/DfL+yBLewm0xgG91u5ksj/bRKhgAqz8PPAjlS5hK1ZGjzTEBUwYQvQ4q9NYRlHvshYtaG7MRlinu
	jRK2zm40ZHbBDPWmAplK4tHKNAxukBMtg/lcdBQ/WaZf0GuEJxtwUucK+DpnkC6vOBKCk5SmreZnL
	i3t32x1DRnZmCKwL7Zgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNlT-0007S9-2J; Tue, 16 Jul 2019 13:45:07 +0000
Received: from gateway-b.fh-trier.de ([143.93.54.182])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNlO-0006pW-Qj
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:45:04 +0000
X-Virus-Scanned: by Amavisd-new + Sophos + ClamAV [Rechenzentrum Hochschule
 Trier (RZ/HT)]
Received: from hochschule-trier.de (owm2.fh-trier.de [143.93.54.169])
 by gateway-b.fh-trier.de (Postfix) with ESMTP id A3DBB17B505
 for <linux-rockchip@lists.infradead.org>;
 Tue, 16 Jul 2019 15:37:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha1; c=simple/simple; d=hochschule-trier.de;
 s=default; t=1563284226; bh=/0ao+WeEGHv8r30rz0aml4RmKjs=;
 h=From:To:Subject:Date:Message-Id:MIME-Version:Content-Type;
 b=R7GOSEuXNZISZ6xfEfHnNl7VPzCOs5/11daUy7g9bIzoL0nRwyb019TQr1YRAXuMq
 ceok9G70Q+mfYmXTvPm4o9/sKuhody8KfSxWq7bnLy6HCXtGfJ2VASLQxsCHtBllzT
 g1Syg5oivj2Gqq3N8+fH2F2qM1/ppWbqge3P3ZA8=
From: "Eric Auer, EMW-MT" <auere@hochschule-trier.de>
To: linux-rockchip@lists.infradead.org
Subject: Wifi indentation fixes
Date: Tue, 16 Jul 2019 15:37:06 +0200
Message-Id: <20190716133522.M79686@hochschule-trier.de>
X-Mailer: OpenWebMail 2.53 
X-OriginatingIP: 93.198.253.41 (auere)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_064503_173495_104E2BE2 
X-CRM114-Status: UNSURE (   1.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [143.93.54.182 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



Dear list,

Below are some indent fixes for some Wifi related sources.

Base Version: Tinker OS 2.0.7 Linux Kernels Version 4.4.103
https://github.com/TinkerBoard/debian_kernel/tree/release

I guess most branches already have those fixed anyway.

Regards, Eric



---
OLD/drivers/net/wireless/rockchip_wlan/rtl8723bs/hal/btc/halbtc8723b1ant.c
2018-06-01 04:25:35
+++
NEW/drivers/net/wireless/rockchip_wlan/rtl8723bs/hal/btc/halbtc8723b1ant.c
2018-07-27 21:08:04
@@ -2195,7 +2195,7 @@
 				else  /*11n mode*/
 					halbtc8723b1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 3);
 
-					halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC, true, 14);
+				halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC, true, 14);
 			}
 		}
 #endif


---
OLD/drivers/net/wireless/rockchip_wlan/rtl8723bs/hal/btc/halbtc8723b2ant.c
2018-06-01 04:25:35
+++
NEW/drivers/net/wireless/rockchip_wlan/rtl8723bs/hal/btc/halbtc8723b2ant.c
2018-07-27 21:07:00
@@ -3273,8 +3273,8 @@
 		halbtc8723b2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);
 
 
-		halbtc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 16);
-		halbtc8723b2ant_ps_tdma(btcoexist, NORMAL_EXEC, true, 30);
+	halbtc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 16);
+	halbtc8723b2ant_ps_tdma(btcoexist, NORMAL_EXEC, true, 30);
 
 #if 0
 	if (BTC_RSSI_HIGH(wifi_rssi_state1) && BTC_RSSI_HIGH(bt_rssi_state)) {


--- OLD/drivers/net/wireless/rockchip_wlan/rtl8814au/core/rtw_mlme_ext.c
2018-06-01 04:25:35
+++ NEW/drivers/net/wireless/rockchip_wlan/rtl8814au/core/rtw_mlme_ext.c
2018-07-27 21:11:16
@@ -12103,13 +12103,13 @@
 							ret = issue_del_ba_ex(padapter, psta->hwaddr, i, 39, 0, 3, 1);
 						else
 							issue_del_ba(padapter,  psta->hwaddr, i, 39, 0);
-							psta->recvreorder_ctrl[i].enable = _FALSE;
+						psta->recvreorder_ctrl[i].enable = _FALSE;
 						if (ret != _FAIL)
 							psta->recvreorder_ctrl[i].ampdu_size = RX_AMPDU_SIZE_INVALID;
-							rtw_reset_continual_no_rx_packet(psta, i);
-						}
+						rtw_reset_continual_no_rx_packet(psta, i);
 					}
 				}
+			}
 			else{
 				/* The inactivity timer is reset when MPDUs to the TID is received. */
 				rtw_reset_continual_no_rx_packet(psta, i);


--- OLD/drivers/net/wireless/rockchip_wlan/rtl8814au/core/rtw_security.c
2018-06-01 04:25:35
+++ NEW/drivers/net/wireless/rockchip_wlan/rtl8814au/core/rtw_security.c
2018-07-27 21:09:52
@@ -1598,8 +1598,8 @@
     for (j = 0; j < 8; j++)
     	pframe[payload_index+j] = mic[j];	//message[payload_index+j] = mic[j];
 
-	payload_index = hdrlen + 8;
-	for (i=0; i< num_blocks; i++)
+    payload_index = hdrlen + 8;
+    for (i=0; i< num_blocks; i++)
     {
         construct_ctr_preload(
                                 ctr_preload,
@@ -1971,8 +1971,8 @@
     for (j = 0; j < 8; j++)
     	message[payload_index+j] = mic[j];
 
-	payload_index = hdrlen + 8;
-	for (i=0; i< num_blocks; i++)
+    payload_index = hdrlen + 8;
+    for (i=0; i< num_blocks; i++)
     {
         construct_ctr_preload(
                                 ctr_preload,


---
OLD/drivers/net/wireless/rockchip_wlan/rtl8814au/hal/rtl8814a/usb/rtl8814au_xmit.c
2018-06-01 04:25:35
+++
NEW/drivers/net/wireless/rockchip_wlan/rtl8814au/hal/rtl8814a/usb/rtl8814au_xmit.c
2018-07-27 21:12:36
@@ -604,8 +604,8 @@
 	bulkPtr = bulkSize;
 	if (pbuf < bulkPtr)
 		descCount++;
-		if (descCount == pHalData->UsbTxAggDescNum)
-			goto agg_end;
+	if (descCount == pHalData->UsbTxAggDescNum)
+		goto agg_end;
 	else {
 		descCount = 0;
 		bulkPtr = ((pbuf / bulkSize) + 1) * bulkSize; // round to next bulkSize



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
