Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E820D59CC
	for <lists+linux-rockchip@lfdr.de>; Mon, 14 Oct 2019 05:06:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dsP6O89iFrl5z5ssgkejNGzeAgAOqnz8nwaD1Vi/+LU=; b=h7ENbg1SqG/hGKHnxW6GH3VUbd
	E6iYdciIg0pswwB7dcZlgtIrmcqaWal9ZAzDoUII7oN3XgkxchHLULd2ytkJf4HxABd1TT3x78Xl2
	sdbg3AkYR0tdSZvHwwu/9VWFZlIV/OsvGM86Oe9nfWDaj2eGK8yL/7RqWDIrpT0jPZgHU/yZyBso/
	fBwioPKl9+azFYzksTOV+oV6TUbCVp5EOPC4czbSOLf6kEXsRWLsaOQvRht8b+6HljwNiI3eQz71R
	Y0Awr9VtSOXbYfnxAL9Wy9FGlAfHe6/VxU54x2IguDAYMQ5aAySLLilH52XreHAvh3JmFlJoTC6T7
	v+at/Maw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJqgM-00073H-HO; Mon, 14 Oct 2019 03:06:02 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJqg6-0006vT-Ao; Mon, 14 Oct 2019 03:05:48 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id 6F37F46F49;
 Mon, 14 Oct 2019 11:04:11 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P29289T140069197305600S1571022249836926_; 
 Mon, 14 Oct 2019 11:04:11 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9f4217cdf9a3e140f49507c4be8ce70c>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 heiko@sntech.de, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] pinctrl: rockchip: add rk3308 SoC support
Date: Mon, 14 Oct 2019 11:04:08 +0800
Message-Id: <20191014030408.18914-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191012061528.27821-1-jay.xu@rock-chips.com>
References: <20191012061528.27821-1-jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_200546_692379_527782D0 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.134 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.134 listed in wl.mailspike.net]
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
Cc: Jianqun Xu <jay.xu@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patch do support pinctrl for RK3308 SoCs.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
changes since v1:
- Add type case for pull get/set
- Add Reviewed-by: Heiko Stuebner <heiko@sntech.de>

 drivers/pinctrl/pinctrl-rockchip.c | 379 +++++++++++++++++++++++++++++
 1 file changed, 379 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index dc0bbf198cbc..15eff9676ad0 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -58,6 +58,7 @@ enum rockchip_pinctrl_type {
 	RK3128,
 	RK3188,
 	RK3288,
+	RK3308,
 	RK3368,
 	RK3399,
 };
@@ -70,6 +71,7 @@ enum rockchip_pinctrl_type {
 #define IOMUX_SOURCE_PMU	BIT(2)
 #define IOMUX_UNROUTED		BIT(3)
 #define IOMUX_WIDTH_3BIT	BIT(4)
+#define IOMUX_WIDTH_2BIT	BIT(5)
 
 /**
  * @type: iomux variant using IOMUX_* constants
@@ -656,6 +658,100 @@ static  struct rockchip_mux_recalced_data rk3128_mux_recalced_data[] = {
 	},
 };
 
+static struct rockchip_mux_recalced_data rk3308_mux_recalced_data[] = {
+	{
+		.num = 1,
+		.pin = 14,
+		.reg = 0x28,
+		.bit = 12,
+		.mask = 0xf
+	}, {
+		.num = 1,
+		.pin = 15,
+		.reg = 0x2c,
+		.bit = 0,
+		.mask = 0x3
+	}, {
+		.num = 1,
+		.pin = 18,
+		.reg = 0x30,
+		.bit = 4,
+		.mask = 0xf
+	}, {
+		.num = 1,
+		.pin = 19,
+		.reg = 0x30,
+		.bit = 8,
+		.mask = 0xf
+	}, {
+		.num = 1,
+		.pin = 20,
+		.reg = 0x30,
+		.bit = 12,
+		.mask = 0xf
+	}, {
+		.num = 1,
+		.pin = 21,
+		.reg = 0x34,
+		.bit = 0,
+		.mask = 0xf
+	}, {
+		.num = 1,
+		.pin = 22,
+		.reg = 0x34,
+		.bit = 4,
+		.mask = 0xf
+	}, {
+		.num = 1,
+		.pin = 23,
+		.reg = 0x34,
+		.bit = 8,
+		.mask = 0xf
+	}, {
+		.num = 3,
+		.pin = 12,
+		.reg = 0x68,
+		.bit = 8,
+		.mask = 0xf
+	}, {
+		.num = 3,
+		.pin = 13,
+		.reg = 0x68,
+		.bit = 12,
+		.mask = 0xf
+	}, {
+		.num = 2,
+		.pin = 2,
+		.reg = 0x608,
+		.bit = 0,
+		.mask = 0x7
+	}, {
+		.num = 2,
+		.pin = 3,
+		.reg = 0x608,
+		.bit = 4,
+		.mask = 0x7
+	}, {
+		.num = 2,
+		.pin = 16,
+		.reg = 0x610,
+		.bit = 8,
+		.mask = 0x7
+	}, {
+		.num = 3,
+		.pin = 10,
+		.reg = 0x610,
+		.bit = 0,
+		.mask = 0x7
+	}, {
+		.num = 3,
+		.pin = 11,
+		.reg = 0x610,
+		.bit = 4,
+		.mask = 0x7
+	},
+};
+
 static struct rockchip_mux_recalced_data rk3328_mux_recalced_data[] = {
 	{
 		.num = 2,
@@ -982,6 +1078,192 @@ static struct rockchip_mux_route_data rk3288_mux_route_data[] = {
 	},
 };
 
+static struct rockchip_mux_route_data rk3308_mux_route_data[] = {
+	{
+		/* rtc_clk */
+		.bank_num = 0,
+		.pin = 19,
+		.func = 1,
+		.route_offset = 0x314,
+		.route_val = BIT(16 + 0) | BIT(0),
+	}, {
+		/* uart2_rxm0 */
+		.bank_num = 1,
+		.pin = 22,
+		.func = 2,
+		.route_offset = 0x314,
+		.route_val = BIT(16 + 2) | BIT(16 + 3),
+	}, {
+		/* uart2_rxm1 */
+		.bank_num = 4,
+		.pin = 26,
+		.func = 2,
+		.route_offset = 0x314,
+		.route_val = BIT(16 + 2) | BIT(16 + 3) | BIT(2),
+	}, {
+		/* i2c3_sdam0 */
+		.bank_num = 0,
+		.pin = 15,
+		.func = 2,
+		.route_offset = 0x608,
+		.route_val = BIT(16 + 8) | BIT(16 + 9),
+	}, {
+		/* i2c3_sdam1 */
+		.bank_num = 3,
+		.pin = 12,
+		.func = 2,
+		.route_offset = 0x608,
+		.route_val = BIT(16 + 8) | BIT(16 + 9) | BIT(8),
+	}, {
+		/* i2c3_sdam2 */
+		.bank_num = 2,
+		.pin = 0,
+		.func = 3,
+		.route_offset = 0x608,
+		.route_val = BIT(16 + 8) | BIT(16 + 9) | BIT(9),
+	}, {
+		/* i2s-8ch-1-sclktxm0 */
+		.bank_num = 1,
+		.pin = 3,
+		.func = 2,
+		.route_offset = 0x308,
+		.route_val = BIT(16 + 3),
+	}, {
+		/* i2s-8ch-1-sclkrxm0 */
+		.bank_num = 1,
+		.pin = 4,
+		.func = 2,
+		.route_offset = 0x308,
+		.route_val = BIT(16 + 3),
+	}, {
+		/* i2s-8ch-1-sclktxm1 */
+		.bank_num = 1,
+		.pin = 13,
+		.func = 2,
+		.route_offset = 0x308,
+		.route_val = BIT(16 + 3) | BIT(3),
+	}, {
+		/* i2s-8ch-1-sclkrxm1 */
+		.bank_num = 1,
+		.pin = 14,
+		.func = 2,
+		.route_offset = 0x308,
+		.route_val = BIT(16 + 3) | BIT(3),
+	}, {
+		/* pdm-clkm0 */
+		.bank_num = 1,
+		.pin = 4,
+		.func = 3,
+		.route_offset = 0x308,
+		.route_val =  BIT(16 + 12) | BIT(16 + 13),
+	}, {
+		/* pdm-clkm1 */
+		.bank_num = 1,
+		.pin = 14,
+		.func = 4,
+		.route_offset = 0x308,
+		.route_val = BIT(16 + 12) | BIT(16 + 13) | BIT(12),
+	}, {
+		/* pdm-clkm2 */
+		.bank_num = 2,
+		.pin = 6,
+		.func = 2,
+		.route_offset = 0x308,
+		.route_val = BIT(16 + 12) | BIT(16 + 13) | BIT(13),
+	}, {
+		/* pdm-clkm-m2 */
+		.bank_num = 2,
+		.pin = 4,
+		.func = 3,
+		.route_offset = 0x600,
+		.route_val = BIT(16 + 2) | BIT(2),
+	}, {
+		/* spi1_miso */
+		.bank_num = 3,
+		.pin = 10,
+		.func = 3,
+		.route_offset = 0x314,
+		.route_val = BIT(16 + 9),
+	}, {
+		/* spi1_miso_m1 */
+		.bank_num = 2,
+		.pin = 4,
+		.func = 2,
+		.route_offset = 0x314,
+		.route_val = BIT(16 + 9) | BIT(9),
+	}, {
+		/* owire_m0 */
+		.bank_num = 0,
+		.pin = 11,
+		.func = 3,
+		.route_offset = 0x314,
+		.route_val = BIT(16 + 10) | BIT(16 + 11),
+	}, {
+		/* owire_m1 */
+		.bank_num = 1,
+		.pin = 22,
+		.func = 7,
+		.route_offset = 0x314,
+		.route_val = BIT(16 + 10) | BIT(16 + 11) | BIT(10),
+	}, {
+		/* owire_m2 */
+		.bank_num = 2,
+		.pin = 2,
+		.func = 5,
+		.route_offset = 0x314,
+		.route_val = BIT(16 + 10) | BIT(16 + 11) | BIT(11),
+	}, {
+		/* can_rxd_m0 */
+		.bank_num = 0,
+		.pin = 11,
+		.func = 2,
+		.route_offset = 0x314,
+		.route_val = BIT(16 + 12) | BIT(16 + 13),
+	}, {
+		/* can_rxd_m1 */
+		.bank_num = 1,
+		.pin = 22,
+		.func = 5,
+		.route_offset = 0x314,
+		.route_val = BIT(16 + 12) | BIT(16 + 13) | BIT(12),
+	}, {
+		/* can_rxd_m2 */
+		.bank_num = 2,
+		.pin = 2,
+		.func = 4,
+		.route_offset = 0x314,
+		.route_val = BIT(16 + 12) | BIT(16 + 13) | BIT(13),
+	}, {
+		/* mac_rxd0_m0 */
+		.bank_num = 1,
+		.pin = 20,
+		.func = 3,
+		.route_offset = 0x314,
+		.route_val = BIT(16 + 14),
+	}, {
+		/* mac_rxd0_m1 */
+		.bank_num = 4,
+		.pin = 2,
+		.func = 2,
+		.route_offset = 0x314,
+		.route_val = BIT(16 + 14) | BIT(14),
+	}, {
+		/* uart3_rx */
+		.bank_num = 3,
+		.pin = 12,
+		.func = 4,
+		.route_offset = 0x314,
+		.route_val = BIT(16 + 15),
+	}, {
+		/* uart3_rx_m1 */
+		.bank_num = 0,
+		.pin = 17,
+		.func = 3,
+		.route_offset = 0x314,
+		.route_val = BIT(16 + 15) | BIT(15),
+	},
+};
+
 static struct rockchip_mux_route_data rk3328_mux_route_data[] = {
 	{
 		/* uart2dbg_rxm0 */
@@ -1475,6 +1757,26 @@ static int rv1108_calc_schmitt_reg_and_bit(struct rockchip_pin_bank *bank,
 	return 0;
 }
 
+#define RK3308_SCHMITT_PINS_PER_REG		8
+#define RK3308_SCHMITT_BANK_STRIDE		16
+#define RK3308_SCHMITT_GRF_OFFSET		0x1a0
+
+static int rk3308_calc_schmitt_reg_and_bit(struct rockchip_pin_bank *bank,
+				    int pin_num, struct regmap **regmap,
+				    int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+
+	*regmap = info->regmap_base;
+	*reg = RK3308_SCHMITT_GRF_OFFSET;
+
+	*reg += bank->bank_num * RK3308_SCHMITT_BANK_STRIDE;
+	*reg += ((pin_num / RK3308_SCHMITT_PINS_PER_REG) * 4);
+	*bit = pin_num % RK3308_SCHMITT_PINS_PER_REG;
+
+	return 0;
+}
+
 #define RK2928_PULL_OFFSET		0x118
 #define RK2928_PULL_PINS_PER_REG	16
 #define RK2928_PULL_BANK_STRIDE		8
@@ -1646,6 +1948,40 @@ static void rk3228_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 	*bit *= RK3288_DRV_BITS_PER_PIN;
 }
 
+#define RK3308_PULL_OFFSET		0xa0
+
+static void rk3308_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+				    int pin_num, struct regmap **regmap,
+				    int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+
+	*regmap = info->regmap_base;
+	*reg = RK3308_PULL_OFFSET;
+	*reg += bank->bank_num * RK3188_PULL_BANK_STRIDE;
+	*reg += ((pin_num / RK3188_PULL_PINS_PER_REG) * 4);
+
+	*bit = (pin_num % RK3188_PULL_PINS_PER_REG);
+	*bit *= RK3188_PULL_BITS_PER_PIN;
+}
+
+#define RK3308_DRV_GRF_OFFSET		0x100
+
+static void rk3308_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
+				    int pin_num, struct regmap **regmap,
+				    int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+
+	*regmap = info->regmap_base;
+	*reg = RK3308_DRV_GRF_OFFSET;
+	*reg += bank->bank_num * RK3288_DRV_BANK_STRIDE;
+	*reg += ((pin_num / RK3288_DRV_PINS_PER_REG) * 4);
+
+	*bit = (pin_num % RK3288_DRV_PINS_PER_REG);
+	*bit *= RK3288_DRV_BITS_PER_PIN;
+}
+
 #define RK3368_PULL_GRF_OFFSET		0x100
 #define RK3368_PULL_PMU_OFFSET		0x10
 
@@ -1986,6 +2322,7 @@ static int rockchip_get_pull(struct rockchip_pin_bank *bank, int pin_num)
 	case RV1108:
 	case RK3188:
 	case RK3288:
+	case RK3308:
 	case RK3368:
 	case RK3399:
 		pull_type = bank->pull_type[pin_num / 8];
@@ -2030,6 +2367,7 @@ static int rockchip_set_pull(struct rockchip_pin_bank *bank,
 	case RV1108:
 	case RK3188:
 	case RK3288:
+	case RK3308:
 	case RK3368:
 	case RK3399:
 		pull_type = bank->pull_type[pin_num / 8];
@@ -2293,6 +2631,7 @@ static bool rockchip_pinconf_pull_valid(struct rockchip_pin_ctrl *ctrl,
 	case RV1108:
 	case RK3188:
 	case RK3288:
+	case RK3308:
 	case RK3368:
 	case RK3399:
 		return (pull != PIN_CONFIG_BIAS_PULL_PIN_DEFAULT);
@@ -3709,6 +4048,44 @@ static struct rockchip_pin_ctrl rk3288_pin_ctrl = {
 		.drv_calc_reg		= rk3288_calc_drv_reg_and_bit,
 };
 
+static struct rockchip_pin_bank rk3308_pin_banks[] = {
+	PIN_BANK_IOMUX_FLAGS(0, 32, "gpio0", IOMUX_WIDTH_2BIT,
+					     IOMUX_WIDTH_2BIT,
+					     IOMUX_WIDTH_2BIT,
+					     IOMUX_WIDTH_2BIT),
+	PIN_BANK_IOMUX_FLAGS(1, 32, "gpio1", IOMUX_WIDTH_2BIT,
+					     IOMUX_WIDTH_2BIT,
+					     IOMUX_WIDTH_2BIT,
+					     IOMUX_WIDTH_2BIT),
+	PIN_BANK_IOMUX_FLAGS(2, 32, "gpio2", IOMUX_WIDTH_2BIT,
+					     IOMUX_WIDTH_2BIT,
+					     IOMUX_WIDTH_2BIT,
+					     IOMUX_WIDTH_2BIT),
+	PIN_BANK_IOMUX_FLAGS(3, 32, "gpio3", IOMUX_WIDTH_2BIT,
+					     IOMUX_WIDTH_2BIT,
+					     IOMUX_WIDTH_2BIT,
+					     IOMUX_WIDTH_2BIT),
+	PIN_BANK_IOMUX_FLAGS(4, 32, "gpio4", IOMUX_WIDTH_2BIT,
+					     IOMUX_WIDTH_2BIT,
+					     IOMUX_WIDTH_2BIT,
+					     IOMUX_WIDTH_2BIT),
+};
+
+static struct rockchip_pin_ctrl rk3308_pin_ctrl = {
+		.pin_banks		= rk3308_pin_banks,
+		.nr_banks		= ARRAY_SIZE(rk3308_pin_banks),
+		.label			= "RK3308-GPIO",
+		.type			= RK3308,
+		.grf_mux_offset		= 0x0,
+		.iomux_recalced		= rk3308_mux_recalced_data,
+		.niomux_recalced	= ARRAY_SIZE(rk3308_mux_recalced_data),
+		.iomux_routes		= rk3308_mux_route_data,
+		.niomux_routes		= ARRAY_SIZE(rk3308_mux_route_data),
+		.pull_calc_reg		= rk3308_calc_pull_reg_and_bit,
+		.drv_calc_reg		= rk3308_calc_drv_reg_and_bit,
+		.schmitt_calc_reg	= rk3308_calc_schmitt_reg_and_bit,
+};
+
 static struct rockchip_pin_bank rk3328_pin_banks[] = {
 	PIN_BANK_IOMUX_FLAGS(0, 32, "gpio0", 0, 0, 0, 0),
 	PIN_BANK_IOMUX_FLAGS(1, 32, "gpio1", 0, 0, 0, 0),
@@ -3849,6 +4226,8 @@ static const struct of_device_id rockchip_pinctrl_dt_match[] = {
 		.data = &rk3228_pin_ctrl },
 	{ .compatible = "rockchip,rk3288-pinctrl",
 		.data = &rk3288_pin_ctrl },
+	{ .compatible = "rockchip,rk3308-pinctrl",
+		.data = &rk3308_pin_ctrl },
 	{ .compatible = "rockchip,rk3328-pinctrl",
 		.data = &rk3328_pin_ctrl },
 	{ .compatible = "rockchip,rk3368-pinctrl",
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
