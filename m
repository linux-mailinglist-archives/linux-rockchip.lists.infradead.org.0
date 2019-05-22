Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4477266A3
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 May 2019 17:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBVfY+TdbOsHOXWMuM9Q/PxwJ2gIc77GEHeaP4jN/BQ=; b=YTGcbNNe7WHF5v
	g1u/eGa3nWCb6tGZFgm43Xz1L5r5olSmnRYZFFlAMm4hzJe1NkuC4chK+2y03R7IUztJH4KHrskbh
	W45sSMW7LNxhFcPBVLe/7WKVh3GhqaVNTlk/h4NO8RofTuD1sPchWbNjuZg/RX+HH45taXsqHTulC
	O8CNJ877xJ+X9e1GESbdHWm7hLWeY3ydsaDtU53FU/KhS8RWBM6B0KfjkMqAHI35mSxau6fTGCxbU
	2xIihuNDvDuPImOcs7/wjNnb367G1mc6DE45I0usgMPVU7pf1KQZ7yw+lVLOwDdrzYBaKX12msn/W
	0x/Dtr132qONUZ7pQmAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTSqS-00050W-HS; Wed, 22 May 2019 15:07:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTSqP-0004zn-74
 for linux-rockchip@lists.infradead.org; Wed, 22 May 2019 15:07:54 +0000
Received: by mail-wm1-x342.google.com with SMTP id q15so2611476wmj.0
 for <linux-rockchip@lists.infradead.org>; Wed, 22 May 2019 08:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ze5OjfpBD8Nq8npugF/p2bX43m+JNomuyzJMkYC2dbk=;
 b=NBkGwfcoPisY4pCj9+h/pDDHffIW5VrAu5H5ttySRlSvjCvC1OVKrbCWJjFRHehH2T
 pGUUhlEuFMrd85SuNGeJLNyqfevHEdO16KFSwLTofGovDGOZJtt0yK4VKAZ3NgPGrZrS
 SKFVzwQoWJ0CLsApO/aF2/Yi96vFoXKJLrKK2sm88JtFBetEVd5/4Y+ScZ9dvW7/jwbX
 KUUAOEOq06HFXGK+881XGoSeAW+9BJT1Q/a7dRNy2yzPaFDXtY02RzkQ8E8Gr9/i1oGQ
 7wedrQS7flVREaQeLz+3/MFwmdUt1ygL1N8FFdIBaiY/jlYaE/N8ZEQGezSeNMdDEEJ+
 j9BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ze5OjfpBD8Nq8npugF/p2bX43m+JNomuyzJMkYC2dbk=;
 b=uGXceosgXv8h26MG7JzPvIxvcfKetXectqK+HkiwWGTnImZQTkrc5IUJrWxPpn+Mmp
 kiawUgOm8SmHRYGEk2XvviKw8dQPLR28k4rDZTqtRlG5c4QO9XR4LkEkkjQfYvCIaNz8
 jV2S1alrP7hZtwPAp7OU+X6qDcy1evo6eGvZMon9HJIPBMUT9RYdE4eWkjgj8TFJo6od
 B27mscuEG4ICiDSDcVEdkSNI8VzZ2ihuQeJigRMAvpAbEhBnc7t/KiYo1cXNMsj0YUPN
 NIc+IGUzJqqekPTpTA1JFIrTUQFyHqS2j/WWKXdZSPo5rC4yOwFf/LggTwNJDFp2zoPQ
 6G7A==
X-Gm-Message-State: APjAAAXYesyCuXxkTRaO1CU7Whr/bOHofDRfdJF3SXjdrDqzymBXBpjQ
 3CotFPx9wiDzcUjSpnydXvw=
X-Google-Smtp-Source: APXvYqx577qWzMWKHIrIXC2wVDSRVIBVa0+2xFt2vtSta/EtA03K/yVCXgB1JQKLWDYWbE7xc4o9fg==
X-Received: by 2002:a1c:2c04:: with SMTP id s4mr7915547wms.123.1558537670201; 
 Wed, 22 May 2019 08:07:50 -0700 (PDT)
Received: from localhost.localdomain ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id y16sm9043738wru.28.2019.05.22.08.07.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 08:07:48 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 William wu <wulf@rock-chips.com>, linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: rockchip: dts: sapphire: Fix USB3 Type-C.
Date: Wed, 22 May 2019 17:07:17 +0200
Message-Id: <20190522150717.1748-1-vicencb@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <574f2bae-0121-4cc7-ad9a-5ba32315d71b@gmail.com>
References: <574f2bae-0121-4cc7-ad9a-5ba32315d71b@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_080753_311600_E42F0E43 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Vicente Bergas <vicencb@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Before this patch, the Type-C port on the Sapphire board is dead.

Applying only the power supply part of this patch, makes the port work
for about 4 seconds at start-up. This is a sample trace with a memory
stick plugged in:
1.- The memory stick LED lights on and kernel reports:
[    4.782999] scsi 0:0:0:0: Direct-Access USB DISK PMAP PQ: 0 ANSI: 4
[    5.904580] sd 0:0:0:0: [sdb] 3913344 512-byte logical blocks: (2.00 GB/1.87 GiB)
[    5.906860] sd 0:0:0:0: [sdb] Write Protect is off
[    5.908973] sd 0:0:0:0: [sdb] Mode Sense: 23 00 00 00
[    5.909122] sd 0:0:0:0: [sdb] No Caching mode page found
[    5.911214] sd 0:0:0:0: [sdb] Assuming drive cache: write through
[    5.951585]  sdb: sdb1
[    5.954816] sd 0:0:0:0: [sdb] Attached SCSI removable disk
2.- 4 seconds later the memory stick LED lights off and kernel reports:
[    9.082822] phy phy-ff770000.syscon:usb2-phy@e450.2: charger = USB_DCP_CHARGER
3.- After a minute the kernel reports:
[   71.666761] usb 5-1: USB disconnect, device number 2
It has been checked that, although the LED is off, VBUS is present.

Applying the full patch makes it work.
It has only been tested in host mode.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 04623e52ac5d..72000a7b666f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -112,6 +112,7 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc5v0_typec0_en>;
 		regulator-name = "vcc5v0_typec0";
+		regulator-always-on;
 		vin-supply = <&vcc_sys>;
 	};
 
@@ -565,12 +566,11 @@
 	status = "okay";
 
 	u2phy0_otg: otg-port {
-		phy-supply = <&vcc5v0_typec0>;
 		status = "okay";
 	};
 
 	u2phy0_host: host-port {
-		phy-supply = <&vcc5v0_host>;
+		phy-supply = <&vcc5v0_typec0>;
 		status = "okay";
 	};
 };
@@ -620,7 +620,7 @@
 
 &usbdrd_dwc3_0 {
 	status = "okay";
-	dr_mode = "otg";
+	dr_mode = "host";
 };
 
 &usbdrd3_1 {
-- 
2.21.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
