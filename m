Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5108612BAE4
	for <lists+linux-rockchip@lfdr.de>; Fri, 27 Dec 2019 21:02:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTpO5CWw51mi07ADjh1TrVhtkDUKWnovpbMawwowcTM=; b=fGYeXqpTSNVcCO
	FIuJ3VBlsNGVWoIdVwXAlP50ykOV6inoWte3epj6tb/PFj0oCX3HjW30602tHf0RluA4hOtktZKSn
	xR2/mq+ihlk/Sg/XHwyawAONxKKVoqeUjuge6TNDWMlPb+Z57WgddQc5RNGdHb64nwGPjP53kFlka
	V/jQaEYx3hYDbOvNAZztnHi0gwZMEq5Z/mTJqQ9DtxEg/qemf+GFzFeLHiY38RbYt046JZx+rIy1O
	ZAIsgXQPm1BvBQl9kxNWsqfS1IhZZE81rrUnRdPphCxR+2iKmarUhkky5WlSMBow6iPL7S7EQHgav
	2WoRGxx+J7QeTc77DWrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikvoU-00009A-B1; Fri, 27 Dec 2019 20:02:22 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikvns-00088U-8h; Fri, 27 Dec 2019 20:01:46 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 9C26D28AEF8
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v12 01/11] media: staging: phy-rockchip-dphy: add Rockchip
 MIPI Synopsys DPHY driver
Date: Fri, 27 Dec 2019 17:01:06 -0300
Message-Id: <20191227200116.2612137-2-helen.koike@collabora.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191227200116.2612137-1-helen.koike@collabora.com>
References: <20191227200116.2612137-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_120144_576228_C2927799 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 ezequiel@collabora.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 Helen Koike <helen.koike@collabora.com>, robh+dt@kernel.org,
 hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, joacim.zetterling@gmail.com, mchehab@kernel.org,
 andrey.konovalov@linaro.org, jacob-chen@iotwrt.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Ezequiel Garcia <ezequiel@collabora.com>

Add driver for Rockchip MIPI Synopsys DPHY driver

Signed-off-by: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Helen Koike <helen.koike@collabora.com>

---

Changes in v12:
- several cleanups
- remove "rx" from function names, as this driver only supports rx

Changes in v11:
- fix checkpatch errors

Changes in v10: None
Changes in v9:
- Move to staging
- replace memcpy by a directly assignment
- remove unecessary ret variable in rockchip_dphy_init
- s/0x1/1
- s/0x0/0
- coding style changes
- dphy_reg variable sizes
- variables from int to unsigned int
- rename functions to start with rk_
- rename dphy0 to rx
- fix hardcoded lane0 usage
- disable rx on power off
- general cleanups of unused variables

Changes in v8:
- Remove boiler plate license text

Changes in v7:
- Migrate dphy specific code from
drivers/media/platform/rockchip/isp1/mipi_dphy_sy.c
to drivers/phy/rockchip/phy-rockchip-dphy.c
- Drop support for rk3288
- Drop support for dphy txrx
- code styling and checkpatch fixes

 drivers/staging/media/Kconfig                 |   2 +
 drivers/staging/media/Makefile                |   1 +
 .../staging/media/phy-rockchip-dphy/Kconfig   |  11 +
 .../staging/media/phy-rockchip-dphy/Makefile  |   2 +
 drivers/staging/media/phy-rockchip-dphy/TODO  |   6 +
 .../phy-rockchip-dphy/phy-rockchip-dphy.c     | 396 ++++++++++++++++++
 6 files changed, 418 insertions(+)
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/Kconfig
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/Makefile
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/TODO
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/phy-rockchip-dphy.c

diff --git a/drivers/staging/media/Kconfig b/drivers/staging/media/Kconfig
index 642adc4c24d2..a47484473883 100644
--- a/drivers/staging/media/Kconfig
+++ b/drivers/staging/media/Kconfig
@@ -38,4 +38,6 @@ source "drivers/staging/media/ipu3/Kconfig"
 
 source "drivers/staging/media/soc_camera/Kconfig"
 
+source "drivers/staging/media/phy-rockchip-dphy/Kconfig"
+
 endif
diff --git a/drivers/staging/media/Makefile b/drivers/staging/media/Makefile
index 2f1711a8aeed..b0eae3906208 100644
--- a/drivers/staging/media/Makefile
+++ b/drivers/staging/media/Makefile
@@ -8,3 +8,4 @@ obj-$(CONFIG_TEGRA_VDE)		+= tegra-vde/
 obj-$(CONFIG_VIDEO_HANTRO)	+= hantro/
 obj-$(CONFIG_VIDEO_IPU3_IMGU)	+= ipu3/
 obj-$(CONFIG_SOC_CAMERA)	+= soc_camera/
+obj-$(CONFIG_PHY_ROCKCHIP_DPHY)		+= phy-rockchip-dphy/
diff --git a/drivers/staging/media/phy-rockchip-dphy/Kconfig b/drivers/staging/media/phy-rockchip-dphy/Kconfig
new file mode 100644
index 000000000000..7378bd75fa7c
--- /dev/null
+++ b/drivers/staging/media/phy-rockchip-dphy/Kconfig
@@ -0,0 +1,11 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Phy drivers for Rockchip platforms
+#
+config PHY_ROCKCHIP_DPHY
+	tristate "Rockchip MIPI Synopsys DPHY driver"
+	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
+	select GENERIC_PHY_MIPI_DPHY
+	select GENERIC_PHY
+	help
+	  Enable this to support the Rockchip MIPI Synopsys DPHY.
diff --git a/drivers/staging/media/phy-rockchip-dphy/Makefile b/drivers/staging/media/phy-rockchip-dphy/Makefile
new file mode 100644
index 000000000000..24679dc950cd
--- /dev/null
+++ b/drivers/staging/media/phy-rockchip-dphy/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_PHY_ROCKCHIP_DPHY)		+= phy-rockchip-dphy.o
diff --git a/drivers/staging/media/phy-rockchip-dphy/TODO b/drivers/staging/media/phy-rockchip-dphy/TODO
new file mode 100644
index 000000000000..e1fda55babef
--- /dev/null
+++ b/drivers/staging/media/phy-rockchip-dphy/TODO
@@ -0,0 +1,6 @@
+The major reason for keeping this in staging is because the only driver
+who uses this is rkisp1 who is also in staging. It should be moved together
+rkisp1.
+
+Please CC patches to Linux Media <linux-media@vger.kernel.org> and
+Helen Koike <helen.koike@collabora.com>.
diff --git a/drivers/staging/media/phy-rockchip-dphy/phy-rockchip-dphy.c b/drivers/staging/media/phy-rockchip-dphy/phy-rockchip-dphy.c
new file mode 100644
index 000000000000..c3fe9c64b45f
--- /dev/null
+++ b/drivers/staging/media/phy-rockchip-dphy/phy-rockchip-dphy.c
@@ -0,0 +1,396 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Rockchip MIPI Synopsys DPHY driver
+ *
+ * Copyright (C) 2019 Collabora, Ltd.
+ *
+ * Based on:
+ *
+ * drivers/media/platform/rockchip/isp1/mipi_dphy_sy.c
+ * in https://chromium.googlesource.com/chromiumos/third_party/kernel,
+ * chromeos-4.4 branch.
+ *
+ * Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd.
+ *   Jacob Chen <jacob2.chen@rock-chips.com>
+ *   Shunqian Zheng <zhengsq@rock-chips.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/phy/phy.h>
+#include <linux/phy/phy-mipi-dphy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#define RK3399_GRF_SOC_CON9		0x6224
+#define RK3399_GRF_SOC_CON21		0x6254
+#define RK3399_GRF_SOC_CON22		0x6258
+#define RK3399_GRF_SOC_CON23		0x625c
+#define RK3399_GRF_SOC_CON24		0x6260
+#define RK3399_GRF_SOC_CON25		0x6264
+#define RK3399_GRF_SOC_STATUS1		0xe2a4
+
+#define CLOCK_LANE_HS_RX_CONTROL	0x34
+#define LANE0_HS_RX_CONTROL		0x44
+#define LANE1_HS_RX_CONTROL		0x54
+#define LANE2_HS_RX_CONTROL		0x84
+#define LANE3_HS_RX_CONTROL		0x94
+#define LANES_THS_SETTLE_CONTROL	0x75
+#define THS_SETTLE_COUNTER_THRESHOLD	0x04
+
+struct hsfreq_range {
+	u16 range_h;
+	u8 cfg_bit;
+};
+
+static const struct hsfreq_range rk3399_mipidphy_hsfreq_ranges[] = {
+	{   89, 0x00 }, {   99, 0x10 }, {  109, 0x20 }, {  129, 0x01 },
+	{  139, 0x11 }, {  149, 0x21 }, {  169, 0x02 }, {  179, 0x12 },
+	{  199, 0x22 }, {  219, 0x03 }, {  239, 0x13 }, {  249, 0x23 },
+	{  269, 0x04 }, {  299, 0x14 }, {  329, 0x05 }, {  359, 0x15 },
+	{  399, 0x25 }, {  449, 0x06 }, {  499, 0x16 }, {  549, 0x07 },
+	{  599, 0x17 }, {  649, 0x08 }, {  699, 0x18 }, {  749, 0x09 },
+	{  799, 0x19 }, {  849, 0x29 }, {  899, 0x39 }, {  949, 0x0a },
+	{  999, 0x1a }, { 1049, 0x2a }, { 1099, 0x3a }, { 1149, 0x0b },
+	{ 1199, 0x1b }, { 1249, 0x2b }, { 1299, 0x3b }, { 1349, 0x0c },
+	{ 1399, 0x1c }, { 1449, 0x2c }, { 1500, 0x3c }
+};
+
+static const char * const rk3399_mipidphy_clks[] = {
+	"dphy-ref",
+	"dphy-cfg",
+	"grf",
+};
+
+enum dphy_reg_id {
+	GRF_DPHY_RX0_TURNDISABLE = 0,
+	GRF_DPHY_RX0_FORCERXMODE,
+	GRF_DPHY_RX0_FORCETXSTOPMODE,
+	GRF_DPHY_RX0_ENABLE,
+	GRF_DPHY_RX0_TESTCLR,
+	GRF_DPHY_RX0_TESTCLK,
+	GRF_DPHY_RX0_TESTEN,
+	GRF_DPHY_RX0_TESTDIN,
+	GRF_DPHY_RX0_TURNREQUEST,
+	GRF_DPHY_RX0_TESTDOUT,
+	GRF_DPHY_TX0_TURNDISABLE,
+	GRF_DPHY_TX0_FORCERXMODE,
+	GRF_DPHY_TX0_FORCETXSTOPMODE,
+	GRF_DPHY_TX0_TURNREQUEST,
+	GRF_DPHY_TX1RX1_TURNDISABLE,
+	GRF_DPHY_TX1RX1_FORCERXMODE,
+	GRF_DPHY_TX1RX1_FORCETXSTOPMODE,
+	GRF_DPHY_TX1RX1_ENABLE,
+	GRF_DPHY_TX1RX1_MASTERSLAVEZ,
+	GRF_DPHY_TX1RX1_BASEDIR,
+	GRF_DPHY_TX1RX1_ENABLECLK,
+	GRF_DPHY_TX1RX1_TURNREQUEST,
+	GRF_DPHY_RX1_SRC_SEL,
+	/* rk3288 only */
+	GRF_CON_DISABLE_ISP,
+	GRF_CON_ISP_DPHY_SEL,
+	GRF_DSI_CSI_TESTBUS_SEL,
+	GRF_DVP_V18SEL,
+	/* below is for rk3399 only */
+	GRF_DPHY_RX0_CLK_INV_SEL,
+	GRF_DPHY_RX1_CLK_INV_SEL,
+};
+
+struct dphy_reg {
+	u16 offset;
+	u8 mask;
+	u8 shift;
+};
+
+#define PHY_REG(_offset, _width, _shift) \
+	{ .offset = _offset, .mask = BIT(_width) - 1, .shift = _shift, }
+
+static const struct dphy_reg rk3399_grf_dphy_regs[] = {
+	[GRF_DPHY_RX0_TURNREQUEST] = PHY_REG(RK3399_GRF_SOC_CON9, 4, 0),
+	[GRF_DPHY_RX0_CLK_INV_SEL] = PHY_REG(RK3399_GRF_SOC_CON9, 1, 10),
+	[GRF_DPHY_RX1_CLK_INV_SEL] = PHY_REG(RK3399_GRF_SOC_CON9, 1, 11),
+	[GRF_DPHY_RX0_ENABLE] = PHY_REG(RK3399_GRF_SOC_CON21, 4, 0),
+	[GRF_DPHY_RX0_FORCERXMODE] = PHY_REG(RK3399_GRF_SOC_CON21, 4, 4),
+	[GRF_DPHY_RX0_FORCETXSTOPMODE] = PHY_REG(RK3399_GRF_SOC_CON21, 4, 8),
+	[GRF_DPHY_RX0_TURNDISABLE] = PHY_REG(RK3399_GRF_SOC_CON21, 4, 12),
+	[GRF_DPHY_TX0_FORCERXMODE] = PHY_REG(RK3399_GRF_SOC_CON22, 4, 0),
+	[GRF_DPHY_TX0_FORCETXSTOPMODE] = PHY_REG(RK3399_GRF_SOC_CON22, 4, 4),
+	[GRF_DPHY_TX0_TURNDISABLE] = PHY_REG(RK3399_GRF_SOC_CON22, 4, 8),
+	[GRF_DPHY_TX0_TURNREQUEST] = PHY_REG(RK3399_GRF_SOC_CON22, 4, 12),
+	[GRF_DPHY_TX1RX1_ENABLE] = PHY_REG(RK3399_GRF_SOC_CON23, 4, 0),
+	[GRF_DPHY_TX1RX1_FORCERXMODE] = PHY_REG(RK3399_GRF_SOC_CON23, 4, 4),
+	[GRF_DPHY_TX1RX1_FORCETXSTOPMODE] = PHY_REG(RK3399_GRF_SOC_CON23, 4, 8),
+	[GRF_DPHY_TX1RX1_TURNDISABLE] = PHY_REG(RK3399_GRF_SOC_CON23, 4, 12),
+	[GRF_DPHY_TX1RX1_TURNREQUEST] = PHY_REG(RK3399_GRF_SOC_CON24, 4, 0),
+	[GRF_DPHY_RX1_SRC_SEL] = PHY_REG(RK3399_GRF_SOC_CON24, 1, 4),
+	[GRF_DPHY_TX1RX1_BASEDIR] = PHY_REG(RK3399_GRF_SOC_CON24, 1, 5),
+	[GRF_DPHY_TX1RX1_ENABLECLK] = PHY_REG(RK3399_GRF_SOC_CON24, 1, 6),
+	[GRF_DPHY_TX1RX1_MASTERSLAVEZ] = PHY_REG(RK3399_GRF_SOC_CON24, 1, 7),
+	[GRF_DPHY_RX0_TESTDIN] = PHY_REG(RK3399_GRF_SOC_CON25, 8, 0),
+	[GRF_DPHY_RX0_TESTEN] = PHY_REG(RK3399_GRF_SOC_CON25, 1, 8),
+	[GRF_DPHY_RX0_TESTCLK] = PHY_REG(RK3399_GRF_SOC_CON25, 1, 9),
+	[GRF_DPHY_RX0_TESTCLR] = PHY_REG(RK3399_GRF_SOC_CON25, 1, 10),
+	[GRF_DPHY_RX0_TESTDOUT] = PHY_REG(RK3399_GRF_SOC_STATUS1, 8, 0),
+};
+
+struct rk_dphy_drv_data {
+	const char * const *clks;
+	unsigned int num_clks;
+	const struct hsfreq_range *hsfreq_ranges;
+	unsigned int num_hsfreq_ranges;
+	const struct dphy_reg *regs;
+};
+
+struct rk_dphy {
+	struct device *dev;
+	struct regmap *grf;
+	struct clk_bulk_data *clks;
+
+	const struct rk_dphy_drv_data *drv_data;
+	struct phy_configure_opts_mipi_dphy config;
+
+	u8 hsfreq;
+};
+
+static inline void rk_dphy_write_grf(struct rk_dphy *priv,
+				     unsigned int index, u8 value)
+{
+	const struct dphy_reg *reg = &priv->drv_data->regs[index];
+	/* Update high word */
+	unsigned int val = (value << reg->shift) |
+			   (reg->mask << (reg->shift + 16));
+
+	WARN_ON(!reg->offset);
+	regmap_write(priv->grf, reg->offset, val);
+}
+
+static void rk_dphy_write(struct rk_dphy *priv,
+			  u8 test_code, u8 test_data)
+{
+	/*
+	 * With the falling edge on TESTCLK, the TESTDIN[7:0] signal content
+	 * is latched internally as the current test code. Test data is
+	 * programmed internally by rising edge on TESTCLK.
+	 */
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TESTCLK, 1);
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TESTDIN, test_code);
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TESTEN, 1);
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TESTCLK, 0);
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TESTEN, 0);
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TESTDIN, test_data);
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TESTCLK, 1);
+}
+
+static void rk_dphy_enable(struct rk_dphy *priv)
+{
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_FORCERXMODE, 0);
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_FORCETXSTOPMODE, 0);
+
+	/* Disable lane turn around, which is ignored in receive mode */
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TURNREQUEST, 0);
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TURNDISABLE, 0xf);
+
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_ENABLE,
+			  GENMASK(priv->config.lanes - 1, 0));
+
+	/* dphy start */
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TESTCLK, 1);
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TESTCLR, 1);
+	usleep_range(100, 150);
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TESTCLR, 0);
+	usleep_range(100, 150);
+
+	/* set clock lane */
+	/* HS hsfreq_range & lane 0  settle bypass */
+	rk_dphy_write(priv, CLOCK_LANE_HS_RX_CONTROL, 0);
+	/* HS RX Control of lane0 */
+	rk_dphy_write(priv, LANE0_HS_RX_CONTROL, priv->hsfreq << 1);
+	/* HS RX Control of lane1 */
+	rk_dphy_write(priv, LANE1_HS_RX_CONTROL, priv->hsfreq << 1);
+	/* HS RX Control of lane2 */
+	rk_dphy_write(priv, LANE2_HS_RX_CONTROL, priv->hsfreq << 1);
+	/* HS RX Control of lane3 */
+	rk_dphy_write(priv, LANE3_HS_RX_CONTROL, priv->hsfreq << 1);
+	/* HS RX Data Lanes Settle State Time Control */
+	rk_dphy_write(priv, LANES_THS_SETTLE_CONTROL,
+		      THS_SETTLE_COUNTER_THRESHOLD);
+
+	/* Normal operation */
+	rk_dphy_write(priv, 0x0, 0);
+}
+
+static int rk_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
+{
+	struct rk_dphy *priv = phy_get_drvdata(phy);
+	const struct rk_dphy_drv_data *drv_data = priv->drv_data;
+	struct phy_configure_opts_mipi_dphy *config = &opts->mipi_dphy;
+	unsigned int i, hsfreq = 0, data_rate_mbps = config->hs_clk_rate;
+	int ret;
+
+	/* pass with phy_mipi_dphy_get_default_config (with pixel rate?) */
+	ret = phy_mipi_dphy_config_validate(config);
+	if (ret)
+		return ret;
+	do_div(data_rate_mbps, 1000 * 1000);
+
+	dev_dbg(priv->dev, "lanes %d - data_rate_mbps %u\n",
+		config->lanes, data_rate_mbps);
+	for (i = 0; i < drv_data->num_hsfreq_ranges; i++) {
+		if (drv_data->hsfreq_ranges[i].range_h >= data_rate_mbps) {
+			hsfreq = drv_data->hsfreq_ranges[i].cfg_bit;
+			break;
+		}
+	}
+	if (!hsfreq)
+		return -EINVAL;
+
+	priv->hsfreq = hsfreq;
+	priv->config = *config;
+	return 0;
+}
+
+static int rk_dphy_power_on(struct phy *phy)
+{
+	struct rk_dphy *priv = phy_get_drvdata(phy);
+	int ret;
+
+	ret = clk_bulk_enable(priv->drv_data->num_clks, priv->clks);
+	if (ret)
+		return ret;
+
+	rk_dphy_enable(priv);
+
+	return 0;
+}
+
+static int rk_dphy_power_off(struct phy *phy)
+{
+	struct rk_dphy *priv = phy_get_drvdata(phy);
+
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_ENABLE, 0);
+	clk_bulk_disable(priv->drv_data->num_clks, priv->clks);
+	return 0;
+}
+
+static int rk_dphy_init(struct phy *phy)
+{
+	struct rk_dphy *priv = phy_get_drvdata(phy);
+
+	return clk_bulk_prepare(priv->drv_data->num_clks, priv->clks);
+}
+
+static int rk_dphy_exit(struct phy *phy)
+{
+	struct rk_dphy *priv = phy_get_drvdata(phy);
+
+	clk_bulk_unprepare(priv->drv_data->num_clks, priv->clks);
+	return 0;
+}
+
+static const struct phy_ops rk_dphy_ops = {
+	.power_on	= rk_dphy_power_on,
+	.power_off	= rk_dphy_power_off,
+	.init		= rk_dphy_init,
+	.exit		= rk_dphy_exit,
+	.configure	= rk_dphy_configure,
+	.owner		= THIS_MODULE,
+};
+
+static const struct rk_dphy_drv_data rk3399_mipidphy_drv_data = {
+	.clks = rk3399_mipidphy_clks,
+	.num_clks = ARRAY_SIZE(rk3399_mipidphy_clks),
+	.hsfreq_ranges = rk3399_mipidphy_hsfreq_ranges,
+	.num_hsfreq_ranges = ARRAY_SIZE(rk3399_mipidphy_hsfreq_ranges),
+	.regs = rk3399_grf_dphy_regs,
+};
+
+static const struct of_device_id rk_dphy_dt_ids[] = {
+	{
+		.compatible = "rockchip,rk3399-mipi-dphy",
+		.data = &rk3399_mipidphy_drv_data,
+	},
+	{}
+};
+MODULE_DEVICE_TABLE(of, rk_dphy_dt_ids);
+
+static int rk_dphy_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	const struct rk_dphy_drv_data *drv_data;
+	struct phy_provider *phy_provider;
+	const struct of_device_id *of_id;
+	struct rk_dphy *priv;
+	struct regmap *grf;
+	struct phy *phy;
+	unsigned int i;
+	int ret;
+
+	if (!dev->parent || !dev->parent->of_node)
+		return -ENODEV;
+
+	if (platform_get_resource(pdev, IORESOURCE_MEM, 0)) {
+		dev_err(dev, "Rockchip DPHY driver only suports RX mode\n");
+		return -EINVAL;
+	}
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+	priv->dev = dev;
+
+	grf = syscon_node_to_regmap(dev->parent->of_node);
+	if (IS_ERR(grf)) {
+		grf = syscon_regmap_lookup_by_phandle(dev->of_node,
+						      "rockchip,grf");
+		if (IS_ERR(grf)) {
+			dev_err(dev, "Can't find GRF syscon\n");
+			return -ENODEV;
+		}
+	}
+	priv->grf = grf;
+
+	of_id = of_match_device(rk_dphy_dt_ids, dev);
+	if (!of_id)
+		return -EINVAL;
+
+	drv_data = of_id->data;
+	priv->drv_data = drv_data;
+	priv->clks = devm_kcalloc(&pdev->dev, drv_data->num_clks,
+				  sizeof(*priv->clks), GFP_KERNEL);
+	if (!priv->clks)
+		return -ENOMEM;
+	for (i = 0; i < drv_data->num_clks; i++)
+		priv->clks[i].id = drv_data->clks[i];
+	ret = devm_clk_bulk_get(&pdev->dev, drv_data->num_clks, priv->clks);
+	if (ret)
+		return ret;
+
+	phy = devm_phy_create(dev, np, &rk_dphy_ops);
+	if (IS_ERR(phy)) {
+		dev_err(dev, "failed to create phy\n");
+		return PTR_ERR(phy);
+	}
+	phy_set_drvdata(phy, priv);
+
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+
+	return PTR_ERR_OR_ZERO(phy_provider);
+}
+
+static struct platform_driver rk_dphy_driver = {
+	.probe = rk_dphy_probe,
+	.driver = {
+		.name	= "rockchip-mipi-dphy",
+		.of_match_table = rk_dphy_dt_ids,
+	},
+};
+module_platform_driver(rk_dphy_driver);
+
+MODULE_AUTHOR("Ezequiel Garcia <ezequiel@collabora.com>");
+MODULE_DESCRIPTION("Rockchip MIPI Synopsys DPHY driver");
+MODULE_LICENSE("Dual MIT/GPL");
-- 
2.24.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
