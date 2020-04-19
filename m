Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AAB1AF932
	for <lists+linux-rockchip@lfdr.de>; Sun, 19 Apr 2020 12:02:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/r4Ia5eHp+XYym3KTBJy1kS0MHEtDgY6kNVu8UNS/lg=; b=SO1GgQhUqIadeu
	CI7GKCRO9Y10TibcN7x5S02UZp03d3Ov7+ImfUflm1Q2X7d246WOK4RDUspFQB4W5At4iwdnd0MWz
	DwjdZctjf0gYx6JdwhfJWeqg6TXlcTKuiTuuf5EqscPF+Kc3tOxVhS6dFtC+e1L0JAW7DwBpOjOwM
	p/zTnaAmT7xDS5MaySKttQUkqidvmX4XEK9V9gpmNv/bGDFbCLEL/7CQDoJn2MgkSN6iy1AKtGFAc
	RvH1vy705eU0Mp98p6YxX+3tfLH5mYkvkfhqVahxO/VCVnSje2EsT7ofuk8dUYiSsXUZ+SUIiDbRR
	oVC7J3v5iDiI0qKz+KMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ6mV-000763-66; Sun, 19 Apr 2020 10:02:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ6mR-000749-8A
 for linux-rockchip@lists.infradead.org; Sun, 19 Apr 2020 10:02:29 +0000
Received: from p508fcedd.dip0.t-ipconnect.de ([80.143.206.221]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jQ6mC-00069Y-Fb; Sun, 19 Apr 2020 12:02:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: jic23@kernel.org
Subject: [PATCH v5 3/3] iio: adc: rockchip_saradc: Add support iio buffers
Date: Sun, 19 Apr 2020 12:02:07 +0200
Message-Id: <20200419100207.58108-3-heiko@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200419100207.58108-1-heiko@sntech.de>
References: <20200419100207.58108-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_030227_444689_93C45BD5 
X-CRM114-Status: GOOD (  20.26  )
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

From: Simon Xue <xxm@rock-chips.com>

Add the ability to also support access via (triggered) buffers
next to the existing direct mode.

Device in question is the Odroid Go Advance that connects a joystick
to two of the saradc channels for X and Y axis and the new (and still
pending) adc joystick driver of course wants to use triggered buffers
from the iio subsystem.

Signed-off-by: Simon Xue <xxm@rock-chips.com>
[some simplifications and added commit description]
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
changes in v5:
- use IIO_CPU instead of IIO_LE as suggested by Peter
changes in v4:
- comment for the channel-num sanity check in probe
- move to struct for data+timestamp, that way we get the 8-byte
  alignment automatically - checked by comparing sizeof results
changes in v3:
- split buffer struct into values and timestamp area similar to dln2-adc
  and make sure timestamp gets 8-byte aligned - ALIGN uses 4 as it aligns
  u16 elements not bytes - hopefully I got it right this time ;-)
changes in v2:
- use devm_iio_triggered_buffer_setup
- calculate data array size from channel number (curtesy of at91-sama5d2_adc)

 drivers/iio/adc/Kconfig           |   2 +
 drivers/iio/adc/rockchip_saradc.c | 149 ++++++++++++++++++++++--------
 2 files changed, 115 insertions(+), 36 deletions(-)

diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
index 12bb8b7ca1ff..8d2dd60614c6 100644
--- a/drivers/iio/adc/Kconfig
+++ b/drivers/iio/adc/Kconfig
@@ -809,6 +809,8 @@ config ROCKCHIP_SARADC
 	tristate "Rockchip SARADC driver"
 	depends on ARCH_ROCKCHIP || (ARM && COMPILE_TEST)
 	depends on RESET_CONTROLLER
+	select IIO_BUFFER
+	select IIO_TRIGGERED_BUFFER
 	help
 	  Say yes here to build support for the SARADC found in SoCs from
 	  Rockchip.
diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 29d7f6e4057e..bdb23088e046 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -15,7 +15,11 @@
 #include <linux/delay.h>
 #include <linux/reset.h>
 #include <linux/regulator/consumer.h>
+#include <linux/iio/buffer.h>
 #include <linux/iio/iio.h>
+#include <linux/iio/trigger.h>
+#include <linux/iio/trigger_consumer.h>
+#include <linux/iio/triggered_buffer.h>
 
 #define SARADC_DATA			0x00
 
@@ -32,9 +36,9 @@
 #define SARADC_DLY_PU_SOC_MASK		0x3f
 
 #define SARADC_TIMEOUT			msecs_to_jiffies(100)
+#define SARADC_MAX_CHANNELS		6
 
 struct rockchip_saradc_data {
-	int				num_bits;
 	const struct iio_chan_spec	*channels;
 	int				num_channels;
 	unsigned long			clk_rate;
@@ -49,8 +53,37 @@ struct rockchip_saradc {
 	struct reset_control	*reset;
 	const struct rockchip_saradc_data *data;
 	u16			last_val;
+	const struct iio_chan_spec *last_chan;
 };
 
+static void rockchip_saradc_power_down(struct rockchip_saradc *info)
+{
+	/* Clear irq & power down adc */
+	writel_relaxed(0, info->regs + SARADC_CTRL);
+}
+
+static int rockchip_saradc_conversion(struct rockchip_saradc *info,
+				   struct iio_chan_spec const *chan)
+{
+	reinit_completion(&info->completion);
+
+	/* 8 clock periods as delay between power up and start cmd */
+	writel_relaxed(8, info->regs + SARADC_DLY_PU_SOC);
+
+	info->last_chan = chan;
+
+	/* Select the channel to be used and trigger conversion */
+	writel(SARADC_CTRL_POWER_CTRL
+			| (chan->channel & SARADC_CTRL_CHN_MASK)
+			| SARADC_CTRL_IRQ_ENABLE,
+		   info->regs + SARADC_CTRL);
+
+	if (!wait_for_completion_timeout(&info->completion, SARADC_TIMEOUT))
+		return -ETIMEDOUT;
+
+	return 0;
+}
+
 static int rockchip_saradc_read_raw(struct iio_dev *indio_dev,
 				    struct iio_chan_spec const *chan,
 				    int *val, int *val2, long mask)
@@ -62,24 +95,12 @@ static int rockchip_saradc_read_raw(struct iio_dev *indio_dev,
 	case IIO_CHAN_INFO_RAW:
 		mutex_lock(&indio_dev->mlock);
 
-		reinit_completion(&info->completion);
-
-		/* 8 clock periods as delay between power up and start cmd */
-		writel_relaxed(8, info->regs + SARADC_DLY_PU_SOC);
-
-		/* Select the channel to be used and trigger conversion */
-		writel(SARADC_CTRL_POWER_CTRL
-				| (chan->channel & SARADC_CTRL_CHN_MASK)
-				| SARADC_CTRL_IRQ_ENABLE,
-		       info->regs + SARADC_CTRL);
-
-		if (!wait_for_completion_timeout(&info->completion,
-						 SARADC_TIMEOUT)) {
-			writel_relaxed(0, info->regs + SARADC_CTRL);
+		ret = rockchip_saradc_conversion(info, chan);
+		if (ret) {
+			rockchip_saradc_power_down(info);
 			mutex_unlock(&indio_dev->mlock);
-			return -ETIMEDOUT;
+			return ret;
 		}
-
 		*val = info->last_val;
 		mutex_unlock(&indio_dev->mlock);
 		return IIO_VAL_INT;
@@ -91,7 +112,7 @@ static int rockchip_saradc_read_raw(struct iio_dev *indio_dev,
 		}
 
 		*val = ret / 1000;
-		*val2 = info->data->num_bits;
+		*val2 = chan->scan_type.realbits;
 		return IIO_VAL_FRACTIONAL_LOG2;
 	default:
 		return -EINVAL;
@@ -104,10 +125,9 @@ static irqreturn_t rockchip_saradc_isr(int irq, void *dev_id)
 
 	/* Read value */
 	info->last_val = readl_relaxed(info->regs + SARADC_DATA);
-	info->last_val &= GENMASK(info->data->num_bits - 1, 0);
+	info->last_val &= GENMASK(info->last_chan->scan_type.realbits - 1, 0);
 
-	/* Clear irq & power down adc */
-	writel_relaxed(0, info->regs + SARADC_CTRL);
+	rockchip_saradc_power_down(info);
 
 	complete(&info->completion);
 
@@ -118,51 +138,55 @@ static const struct iio_info rockchip_saradc_iio_info = {
 	.read_raw = rockchip_saradc_read_raw,
 };
 
-#define SARADC_CHANNEL(_index, _id) {				\
+#define SARADC_CHANNEL(_index, _id, _res) {			\
 	.type = IIO_VOLTAGE,					\
 	.indexed = 1,						\
 	.channel = _index,					\
 	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),		\
 	.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),	\
 	.datasheet_name = _id,					\
+	.scan_index = _index,					\
+	.scan_type = {						\
+		.sign = 'u',					\
+		.realbits = _res,				\
+		.storagebits = 16,				\
+		.endianness = IIO_CPU,				\
+	},							\
 }
 
 static const struct iio_chan_spec rockchip_saradc_iio_channels[] = {
-	SARADC_CHANNEL(0, "adc0"),
-	SARADC_CHANNEL(1, "adc1"),
-	SARADC_CHANNEL(2, "adc2"),
+	SARADC_CHANNEL(0, "adc0", 10),
+	SARADC_CHANNEL(1, "adc1", 10),
+	SARADC_CHANNEL(2, "adc2", 10),
 };
 
 static const struct rockchip_saradc_data saradc_data = {
-	.num_bits = 10,
 	.channels = rockchip_saradc_iio_channels,
 	.num_channels = ARRAY_SIZE(rockchip_saradc_iio_channels),
 	.clk_rate = 1000000,
 };
 
 static const struct iio_chan_spec rockchip_rk3066_tsadc_iio_channels[] = {
-	SARADC_CHANNEL(0, "adc0"),
-	SARADC_CHANNEL(1, "adc1"),
+	SARADC_CHANNEL(0, "adc0", 12),
+	SARADC_CHANNEL(1, "adc1", 12),
 };
 
 static const struct rockchip_saradc_data rk3066_tsadc_data = {
-	.num_bits = 12,
 	.channels = rockchip_rk3066_tsadc_iio_channels,
 	.num_channels = ARRAY_SIZE(rockchip_rk3066_tsadc_iio_channels),
 	.clk_rate = 50000,
 };
 
 static const struct iio_chan_spec rockchip_rk3399_saradc_iio_channels[] = {
-	SARADC_CHANNEL(0, "adc0"),
-	SARADC_CHANNEL(1, "adc1"),
-	SARADC_CHANNEL(2, "adc2"),
-	SARADC_CHANNEL(3, "adc3"),
-	SARADC_CHANNEL(4, "adc4"),
-	SARADC_CHANNEL(5, "adc5"),
+	SARADC_CHANNEL(0, "adc0", 10),
+	SARADC_CHANNEL(1, "adc1", 10),
+	SARADC_CHANNEL(2, "adc2", 10),
+	SARADC_CHANNEL(3, "adc3", 10),
+	SARADC_CHANNEL(4, "adc4", 10),
+	SARADC_CHANNEL(5, "adc5", 10),
 };
 
 static const struct rockchip_saradc_data rk3399_saradc_data = {
-	.num_bits = 10,
 	.channels = rockchip_rk3399_saradc_iio_channels,
 	.num_channels = ARRAY_SIZE(rockchip_rk3399_saradc_iio_channels),
 	.clk_rate = 1000000,
@@ -202,6 +226,47 @@ static void rockchip_saradc_disable(void *data)
 	regulator_disable(info->vref);
 }
 
+static irqreturn_t rockchip_saradc_trigger_handler(int irq, void *p)
+{
+	struct iio_poll_func *pf = p;
+	struct iio_dev *i_dev = pf->indio_dev;
+	struct rockchip_saradc *info = iio_priv(i_dev);
+	/*
+	 * @values: each channel takes an u16 value
+	 * @timestamp: will be 8-byte aligned automatically
+	 */
+	struct {
+		u16 values[SARADC_MAX_CHANNELS];
+		int64_t timestamp;
+	} data;
+	int ret;
+	int i, j = 0;
+
+	mutex_lock(&i_dev->mlock);
+
+	for_each_set_bit(i, i_dev->active_scan_mask, i_dev->masklength) {
+		const struct iio_chan_spec *chan = &i_dev->channels[i];
+
+		ret = rockchip_saradc_conversion(info, chan);
+		if (ret) {
+			rockchip_saradc_power_down(info);
+			goto out;
+		}
+
+		data.values[j] = info->last_val;
+		j++;
+	}
+
+	iio_push_to_buffers_with_timestamp(i_dev, &data,
+					   iio_get_time_ns(i_dev));
+out:
+	mutex_unlock(&i_dev->mlock);
+
+	iio_trigger_notify_done(i_dev->trig);
+
+	return IRQ_HANDLED;
+}
+
 static int rockchip_saradc_probe(struct platform_device *pdev)
 {
 	struct rockchip_saradc *info = NULL;
@@ -230,6 +295,12 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 
 	info->data = match->data;
 
+	/* Sanity check for possible later IP variants with more channels */
+	if (info->data->num_channels > SARADC_MAX_CHANNELS) {
+		dev_err(&pdev->dev, "max channels exceeded");
+		return -EINVAL;
+	}
+
 	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	info->regs = devm_ioremap_resource(&pdev->dev, mem);
 	if (IS_ERR(info->regs))
@@ -332,6 +403,12 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	indio_dev->channels = info->data->channels;
 	indio_dev->num_channels = info->data->num_channels;
 
+	ret = devm_iio_triggered_buffer_setup(&indio_dev->dev, indio_dev, NULL,
+					      rockchip_saradc_trigger_handler,
+					      NULL);
+	if (ret)
+		return ret;
+
 	ret = devm_iio_device_register(&pdev->dev, indio_dev);
 	if (ret)
 		return ret;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
