Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF6A4E627
	for <lists+linux-rockchip@lfdr.de>; Fri, 21 Jun 2019 12:35:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dZ7JpAVhmHDq1GbwoUunZZGelfObHhdJRy1m2M4Yyhc=; b=vETjZrKiIHHL7aCpFCDqKWH54M
	lQcDduuJfqCRtIHn/mhWnuBUeuw2zlzCX3Gl4rjHgcMcycLl4NdP39+nvZsbKG8UGzId4ivVaDa/N
	EVQU6sri7wDtlBLpulnL47dhOethWKiCqpLBykw1NByeoOZlbO1VRUil2M2as4APLXfQjAerhbkcF
	/A/0btZpw+eU3O0WZzYXpT6FkoI7gxeQ5qCHHQ1bW/5IstVcIiZW27YlmUnFBIU2HrjweETs70EP1
	IAyHOgU+U0rcpWifKwR603EvkSn4ruTU5X5b4gc3N0m2zt7t2fdsXHDbm5m4SFbYzyfnePByeYZff
	2I2Ajo/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGt5-0003Kw-EG; Fri, 21 Jun 2019 10:35:19 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heGr3-0000Pu-VZ; Fri, 21 Jun 2019 10:33:16 +0000
Received: from tony.xie?rock-chips.com (unknown [192.168.167.192])
 by lucky1.263xmail.com (Postfix) with ESMTP id A192637A80;
 Fri, 21 Jun 2019 18:33:07 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P14435T140356020590336S1561113180405822_; 
 Fri, 21 Jun 2019 18:33:07 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <aa4bbec0df911b6ad65070d297612e64>
X-RL-SENDER: tony.xie@rock-chips.com
X-SENDER: xxx@rock-chips.com
X-LOGIN-NAME: tony.xie@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Tony Xie <tony.xie@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v10 4/6] dt-bindings: mfd: rk808: Add binding information for
 RK809 and RK817.
Date: Fri, 21 Jun 2019 06:32:56 -0400
Message-Id: <20190621103258.8154-5-tony.xie@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190621103258.8154-1-tony.xie@rock-chips.com>
References: <20190621103258.8154-1-tony.xie@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_033314_388192_F46EF9BB 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.135 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 tony.xie@rock-chips.com, huangtao@rock-chips.com, devicetree@vger.kernel.org,
 sboyd@kernel.org, zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, xsf@rock-chips.com, linux-rockchip@lists.infradead.org,
 broonie@kernel.org, chenjh@rock-chips.com, lee.jones@linaro.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add device tree bindings documentation for Rockchip's RK809 & RK817 PMIC.

Signed-off-by: Tony Xie <tony.xie@rock-chips.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
---
 .../devicetree/bindings/mfd/rk808.txt         | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
index 1683ec3245bc..04df07f6f793 100644
--- a/Documentation/devicetree/bindings/mfd/rk808.txt
+++ b/Documentation/devicetree/bindings/mfd/rk808.txt
@@ -3,11 +3,15 @@ RK8XX Power Management Integrated Circuit
 The rk8xx family current members:
 rk805
 rk808
+rk809
+rk817
 rk818
 
 Required properties:
 - compatible: "rockchip,rk805"
 - compatible: "rockchip,rk808"
+- compatible: "rockchip,rk809"
+- compatible: "rockchip,rk817"
 - compatible: "rockchip,rk818"
 - reg: I2C slave address
 - interrupts: the interrupt outputs of the controller.
@@ -45,6 +49,23 @@ Optional RK808 properties:
   the gpio controller. If DVS GPIOs aren't present, voltage changes will happen
   very quickly with no slow ramp time.
 
+Optional shared RK809 and RK817 properties:
+- vcc1-supply:  The input supply for DCDC_REG1
+- vcc2-supply:  The input supply for DCDC_REG2
+- vcc3-supply:  The input supply for DCDC_REG3
+- vcc4-supply:  The input supply for DCDC_REG4
+- vcc5-supply:  The input supply for LDO_REG1, LDO_REG2, LDO_REG3
+- vcc6-supply:  The input supply for LDO_REG4, LDO_REG5, LDO_REG6
+- vcc7-supply:  The input supply for LDO_REG7, LDO_REG8, LDO_REG9
+
+Optional RK809 properties:
+- vcc8-supply:  The input supply for SWITCH_REG1
+- vcc9-supply:  The input supply for DCDC_REG5, SWITCH_REG2
+
+Optional RK817 properties:
+- vcc8-supply:  The input supply for BOOST
+- vcc9-supply:  The input supply for OTG_SWITCH
+
 Optional RK818 properties:
 - vcc1-supply:  The input supply for DCDC_REG1
 - vcc2-supply:  The input supply for DCDC_REG2
@@ -86,6 +107,21 @@ number as described in RK808 datasheet.
 	- SWITCH_REGn
 		- valid values for n are 1 to 2
 
+Following regulators of the RK809 and RK817 PMIC blocks are supported. Note that
+the 'n' in regulator name, as in DCDC_REGn or LDOn, represents the DCDC or LDO
+number as described in RK809 and RK817 datasheets.
+
+	- DCDC_REGn
+		- valid values for n are 1 to 5 for RK809.
+		- valid values for n are 1 to 4 for RK817.
+	- LDO_REGn
+		- valid values for n are 1 to 9 for RK809.
+		- valid values for n are 1 to 9 for RK817.
+	- SWITCH_REGn
+		- valid values for n are 1 to 2 for RK809.
+	- BOOST for RK817
+	- OTG_SWITCH for RK817
+
 Following regulators of the RK818 PMIC block are supported. Note that
 the 'n' in regulator name, as in DCDC_REGn or LDOn, represents the DCDC or LDO
 number as described in RK818 datasheet.
@@ -98,6 +134,14 @@ number as described in RK818 datasheet.
 	- HDMI_SWITCH
 	- OTG_SWITCH
 
+It is necessary to configure three pins for both the RK809 and RK817, the three
+pins are "gpio_ts" "gpio_gt" "gpio_slp".
+	The gpio_gt and gpio_ts pins support the gpio function.
+	The gpio_slp pin is for controlling the pmic states, as below:
+		- reset
+		- power down
+		- sleep
+
 Standard regulator bindings are used inside regulator subnodes. Check
   Documentation/devicetree/bindings/regulator/regulator.txt
 for more details
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
