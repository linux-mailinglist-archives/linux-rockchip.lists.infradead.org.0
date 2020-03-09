Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3274917EB1C
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Mar 2020 22:22:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GUmnoxJzlz8c0s3PMH9P/HHRiQ1Z3r+pqaB1UiOQOZE=; b=UC+gyWINzuuv9U
	7NrnOv3JRjHnY9ayr9+u5w2Ic5mvmdYNwPrfZqvPSyLl6PlAMpiPGrtilgXrjVJLRrUdplToyA0Cf
	SWO5GOskAx4bF/fLR4W93xCWJb0ELv9MnqzTxSffVVMz7Ow5KzooD6UcFSYHUmm3xp6iuTrhyqsAr
	CIx6cjD9eVmBHtfOyOzIIP0whvjUmSRNkX0iX5GjYIZmsBG1iLysmIO4B6uc5/lU9smweqRjMJ2Ie
	3aCxnrbY1eVmJMb2FEIm4x/0pGR4a5V4GLgeMj0+WcTIeK6vBeTpsHcRmNjvx6jMb/GUrAFRw1z+g
	DFC3WdadCrlLXBElTeAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBPrC-0001u6-47; Mon, 09 Mar 2020 21:22:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBPr8-0001tK-57
 for linux-rockchip@lists.infradead.org; Mon, 09 Mar 2020 21:22:36 +0000
Received: from p5b127dd5.dip0.t-ipconnect.de ([91.18.125.213] helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jBPqr-0000LY-0o; Mon, 09 Mar 2020 22:22:17 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: jic23@kernel.org
Subject: [PATCH v2] iio: adc: rockchip_saradc: Add support iio buffers
Date: Mon,  9 Mar 2020 22:22:02 +0100
Message-Id: <20200309212202.107785-1-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_142234_360615_7BA47117 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
changes in v2:
- use devm_iio_triggered_buffer_setup
- calculate data array size from channel number (curtesy of at91-sama5d2_adc)

 drivers/iio/adc/Kconfig           |   2 +
 drivers/iio/adc/rockchip_saradc.c | 150 +++++++++++++++++++++++-------
 2 files changed, 116 insertions(+), 36 deletions(-)

diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
index 82e33082958c..55d2499ff757 100644
--- a/drivers/iio/adc/Kconfig
+++ b/drivers/iio/adc/Kconfig
@@ -787,6 +787,8 @@ config ROCKCHIP_SARADC
 	tristate "Rockchip SARADC driver"
 	depends on ARCH_ROCKCHIP || (ARM && COMPILE_TEST)
 	depends on RESET_CONTROLLER
+	select IIO_BUFFER
+	select IIO_TRIGGERED_BUFFER
 	help
 	  Say yes here to build support for the SARADC found in SoCs from
 	  Rockchip.
diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 582ba047c4a6..0ee62d3935b7 100644
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
 
@@ -32,9 +36,19 @@
 #define SARADC_DLY_PU_SOC_MASK		0x3f
 
 #define SARADC_TIMEOUT			msecs_to_jiffies(100)
+#define SARADC_MAX_CHANNELS		6
+
+/*
+ * Maximum number of bytes to hold conversion from all channels
+ * without the timestamp.
+ */
+#define SARADC_BUFFER_MAX_CONVERSION_BYTES ((SARADC_MAX_CHANNELS) * 2)
+
+/* This total must also include the timestamp */
+#define SARADC_BUFFER_MAX_BYTES (SARADC_BUFFER_MAX_CONVERSION_BYTES + 8)
+#define SARADC_BUFFER_MAX_HWORDS (SARADC_BUFFER_MAX_BYTES / 2)
 
 struct rockchip_saradc_data {
-	int				num_bits;
 	const struct iio_chan_spec	*channels;
 	int				num_channels;
 	unsigned long			clk_rate;
@@ -49,8 +63,37 @@ struct rockchip_saradc {
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
@@ -62,24 +105,12 @@ static int rockchip_saradc_read_raw(struct iio_dev *indio_dev,
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
@@ -91,7 +122,7 @@ static int rockchip_saradc_read_raw(struct iio_dev *indio_dev,
 		}
 
 		*val = ret / 1000;
-		*val2 = info->data->num_bits;
+		*val2 = chan->scan_type.realbits;
 		return IIO_VAL_FRACTIONAL_LOG2;
 	default:
 		return -EINVAL;
@@ -104,10 +135,9 @@ static irqreturn_t rockchip_saradc_isr(int irq, void *dev_id)
 
 	/* Read value */
 	info->last_val = readl_relaxed(info->regs + SARADC_DATA);
-	info->last_val &= GENMASK(info->data->num_bits - 1, 0);
+	info->last_val &= GENMASK(info->last_chan->scan_type.realbits - 1, 0);
 
-	/* Clear irq & power down adc */
-	writel_relaxed(0, info->regs + SARADC_CTRL);
+	rockchip_saradc_power_down(info);
 
 	complete(&info->completion);
 
@@ -118,51 +148,55 @@ static const struct iio_info rockchip_saradc_iio_info = {
 	.read_raw = rockchip_saradc_read_raw,
 };
 
-#define ADC_CHANNEL(_index, _id) {				\
+#define ADC_CHANNEL(_index, _id, _res) {			\
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
+		.endianness = IIO_LE,				\
+	},							\
 }
 
 static const struct iio_chan_spec rockchip_saradc_iio_channels[] = {
-	ADC_CHANNEL(0, "adc0"),
-	ADC_CHANNEL(1, "adc1"),
-	ADC_CHANNEL(2, "adc2"),
+	ADC_CHANNEL(0, "adc0", 10),
+	ADC_CHANNEL(1, "adc1", 10),
+	ADC_CHANNEL(2, "adc2", 10),
 };
 
 static const struct rockchip_saradc_data saradc_data = {
-	.num_bits = 10,
 	.channels = rockchip_saradc_iio_channels,
 	.num_channels = ARRAY_SIZE(rockchip_saradc_iio_channels),
 	.clk_rate = 1000000,
 };
 
 static const struct iio_chan_spec rockchip_rk3066_tsadc_iio_channels[] = {
-	ADC_CHANNEL(0, "adc0"),
-	ADC_CHANNEL(1, "adc1"),
+	ADC_CHANNEL(0, "adc0", 12),
+	ADC_CHANNEL(1, "adc1", 12),
 };
 
 static const struct rockchip_saradc_data rk3066_tsadc_data = {
-	.num_bits = 12,
 	.channels = rockchip_rk3066_tsadc_iio_channels,
 	.num_channels = ARRAY_SIZE(rockchip_rk3066_tsadc_iio_channels),
 	.clk_rate = 50000,
 };
 
 static const struct iio_chan_spec rockchip_rk3399_saradc_iio_channels[] = {
-	ADC_CHANNEL(0, "adc0"),
-	ADC_CHANNEL(1, "adc1"),
-	ADC_CHANNEL(2, "adc2"),
-	ADC_CHANNEL(3, "adc3"),
-	ADC_CHANNEL(4, "adc4"),
-	ADC_CHANNEL(5, "adc5"),
+	ADC_CHANNEL(0, "adc0", 10),
+	ADC_CHANNEL(1, "adc1", 10),
+	ADC_CHANNEL(2, "adc2", 10),
+	ADC_CHANNEL(3, "adc3", 10),
+	ADC_CHANNEL(4, "adc4", 10),
+	ADC_CHANNEL(5, "adc5", 10),
 };
 
 static const struct rockchip_saradc_data rk3399_saradc_data = {
-	.num_bits = 10,
 	.channels = rockchip_rk3399_saradc_iio_channels,
 	.num_channels = ARRAY_SIZE(rockchip_rk3399_saradc_iio_channels),
 	.clk_rate = 1000000,
@@ -193,6 +227,39 @@ static void rockchip_saradc_reset_controller(struct reset_control *reset)
 	reset_control_deassert(reset);
 }
 
+static irqreturn_t rockchip_saradc_trigger_handler(int irq, void *p)
+{
+	struct iio_poll_func *pf = p;
+	struct iio_dev *i_dev = pf->indio_dev;
+	struct rockchip_saradc *info = iio_priv(i_dev);
+	u16 data[SARADC_BUFFER_MAX_HWORDS];
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
+		data[j] = info->last_val;
+		j++;
+	}
+
+	iio_push_to_buffers_with_timestamp(i_dev, data, iio_get_time_ns(i_dev));
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
@@ -221,6 +288,11 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 
 	info->data = match->data;
 
+	if (info->data->num_channels > SARADC_MAX_CHANNELS) {
+		dev_err(&pdev->dev, "max channels exceeded");
+		return -EINVAL;
+	}
+
 	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	info->regs = devm_ioremap_resource(&pdev->dev, mem);
 	if (IS_ERR(info->regs))
@@ -315,6 +387,12 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	indio_dev->channels = info->data->channels;
 	indio_dev->num_channels = info->data->num_channels;
 
+	ret = devm_iio_triggered_buffer_setup(&indio_dev->dev, indio_dev, NULL,
+					      rockchip_saradc_trigger_handler,
+					      NULL);
+	if (ret)
+		goto err_clk;
+
 	ret = iio_device_register(indio_dev);
 	if (ret)
 		goto err_clk;
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
