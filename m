Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF7A1AF931
	for <lists+linux-rockchip@lfdr.de>; Sun, 19 Apr 2020 12:02:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEv1kGdfJbQFj08MylNdrZt2tlDdIQqXNQ3QxT1EkD4=; b=eJ2eKsS/YGAn4v
	Tx7+oU94LxXDfZdks+/TRYD8yM7pYt0nsSgZcvw2usQYsI95NwzHYlLn2qbSJOgaHzf5Kqn+XU3Gx
	UADbd2HbADAjGbX+YFTfAA5ZFAIc/Xp6ard1cChy4JT7SUuxkpMxnF6BabJTLkVSPMLSjptMCCr0e
	qmaQVLyuq+naKHBcup2r4/TXtfnNJtVltX2xn8Dgqc1GtIpooEQm+9+nt64NCv0M9owOVj8uK/2jo
	HhMe9BxP6Dx2ay0A3RLP77JmiJGmeB447DkxKHkx7LTp+nRmxptSsIQnLi0CyViEzUnbnmMsZkMPk
	jeTtBCdGt7YTJb84bmjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ6mU-00075Q-EM; Sun, 19 Apr 2020 10:02:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ6mR-000748-Ix
 for linux-rockchip@lists.infradead.org; Sun, 19 Apr 2020 10:02:29 +0000
Received: from p508fcedd.dip0.t-ipconnect.de ([80.143.206.221]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jQ6mC-00069Y-0i; Sun, 19 Apr 2020 12:02:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: jic23@kernel.org
Subject: [PATCH v5 2/3] iio: adc: rockchip_saradc: better prefix for channel
 constant
Date: Sun, 19 Apr 2020 12:02:06 +0200
Message-Id: <20200419100207.58108-2-heiko@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200419100207.58108-1-heiko@sntech.de>
References: <20200419100207.58108-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_030227_617635_63D3210D 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: lars@metafoo.de, heiko@sntech.de, linux-iio@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com,
 linux-rockchip@lists.infradead.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 xxm@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

As suggested give the current ADC_CHANNEL constant a distinct
and consistent prefix.

Suggested-by: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
changes in v5:
- new patch

 drivers/iio/adc/rockchip_saradc.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 270eb7e83823..29d7f6e4057e 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -118,7 +118,7 @@ static const struct iio_info rockchip_saradc_iio_info = {
 	.read_raw = rockchip_saradc_read_raw,
 };
 
-#define ADC_CHANNEL(_index, _id) {				\
+#define SARADC_CHANNEL(_index, _id) {				\
 	.type = IIO_VOLTAGE,					\
 	.indexed = 1,						\
 	.channel = _index,					\
@@ -128,9 +128,9 @@ static const struct iio_info rockchip_saradc_iio_info = {
 }
 
 static const struct iio_chan_spec rockchip_saradc_iio_channels[] = {
-	ADC_CHANNEL(0, "adc0"),
-	ADC_CHANNEL(1, "adc1"),
-	ADC_CHANNEL(2, "adc2"),
+	SARADC_CHANNEL(0, "adc0"),
+	SARADC_CHANNEL(1, "adc1"),
+	SARADC_CHANNEL(2, "adc2"),
 };
 
 static const struct rockchip_saradc_data saradc_data = {
@@ -141,8 +141,8 @@ static const struct rockchip_saradc_data saradc_data = {
 };
 
 static const struct iio_chan_spec rockchip_rk3066_tsadc_iio_channels[] = {
-	ADC_CHANNEL(0, "adc0"),
-	ADC_CHANNEL(1, "adc1"),
+	SARADC_CHANNEL(0, "adc0"),
+	SARADC_CHANNEL(1, "adc1"),
 };
 
 static const struct rockchip_saradc_data rk3066_tsadc_data = {
@@ -153,12 +153,12 @@ static const struct rockchip_saradc_data rk3066_tsadc_data = {
 };
 
 static const struct iio_chan_spec rockchip_rk3399_saradc_iio_channels[] = {
-	ADC_CHANNEL(0, "adc0"),
-	ADC_CHANNEL(1, "adc1"),
-	ADC_CHANNEL(2, "adc2"),
-	ADC_CHANNEL(3, "adc3"),
-	ADC_CHANNEL(4, "adc4"),
-	ADC_CHANNEL(5, "adc5"),
+	SARADC_CHANNEL(0, "adc0"),
+	SARADC_CHANNEL(1, "adc1"),
+	SARADC_CHANNEL(2, "adc2"),
+	SARADC_CHANNEL(3, "adc3"),
+	SARADC_CHANNEL(4, "adc4"),
+	SARADC_CHANNEL(5, "adc5"),
 };
 
 static const struct rockchip_saradc_data rk3399_saradc_data = {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
