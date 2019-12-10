Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A2A1188AF
	for <lists+linux-rockchip@lfdr.de>; Tue, 10 Dec 2019 13:45:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WA0B9wS5rhPzp1PCSJSOcYpkEUqk79rU+0ddz5f+rO4=; b=L+M8qbcUa18uQF
	mKDJqZ17v4XeFycV0jIuHLW27t3keNz1uE59+0HzZR/JdpmtjiNNIhefui9SjRyQgUP9FOKW4H0vm
	PLLed75AZq5vPGbBslrh2Gijy6+3mnjziK52i3Bz3ybsS170HmHWOBgA4kR1/lNTsl9SPxnmsC4dx
	Se8Su3NTN6Fl0xXDljG2cG5AvX9THBzyzjOWAW/8fh9kilSCcinMjxdd4cqRG2Cn9eXTzLw1RvRZD
	uZzhEFOjs8qEtF9U1Ty1jqonc2wM/yONbQ8byda6IGrrLOGxyhd1t/IuUzPbHFynwBx0NoO52lSUb
	1s4nel0M27xkVDh/5c3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieesr-0002ze-Di; Tue, 10 Dec 2019 12:44:57 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieesh-0002r5-HH; Tue, 10 Dec 2019 12:44:49 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1ieesZ-0004w5-Vj; Tue, 10 Dec 2019 13:44:40 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 xBACicTS005661
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Tue, 10 Dec 2019 13:44:38 +0100
From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH 1/3] arm64: dts: rockchip: Remove always-on properties from
 regulator nodes on rk3399-roc-pc.
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Organization: five technologies GmbH
Message-ID: <f985665c-86c0-1657-14f8-f77e2ce5a3f7@fivetechno.de>
Date: Tue, 10 Dec 2019 13:44:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1575981887;
 6836b884; 
X-HE-SMSGID: 1ieesZ-0004w5-Vj
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_044447_719252_A05154CF 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Some regulators don't need the always-on property, remove it.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
  arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts | 2 --
  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi          | 3 ---
  2 files changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
index 2c9c13a0fca9..2db9d32ad54a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
@@ -32,8 +32,6 @@ vcc3v3_pcie: vcc3v3-pcie {
  		gpio = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
  		pinctrl-names = "default";
  		pinctrl-0 = <&vcc3v3_pcie_en>;
-		regulator-always-on;
-		regulator-boot-on;
  		regulator-min-microvolt = <3300000>;
  		regulator-max-microvolt = <3300000>;
  		vin-supply = <&dc_12v>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 9a1ce3a4ae12..8e01b04144b7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -176,7 +176,6 @@ vcc5v0_host: vcc5v0-host-regulator {
  		pinctrl-names = "default";
  		pinctrl-0 = <&vcc5v0_host_en &hub_rst>;
  		regulator-name = "vcc5v0_host";
-		regulator-always-on;
  		vin-supply = <&vcc_sys>;
  	};
  
@@ -198,7 +197,6 @@ vcc_sys: vcc-sys {
  		pinctrl-names = "default";
  		pinctrl-0 = <&vcc_sys_en>;
  		regulator-name = "vcc_sys";
-		regulator-always-on;
  		regulator-boot-on;
  		regulator-min-microvolt = <5000000>;
  		regulator-max-microvolt = <5000000>;
@@ -392,7 +390,6 @@ regulator-state-mem {
  
  			vcc_sdio: LDO_REG4 {
  				regulator-name = "vcc_sdio";
-				regulator-always-on;
  				regulator-boot-on;
  				regulator-min-microvolt = <1800000>;
  				regulator-max-microvolt = <3000000>;
-- 
2.24.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
