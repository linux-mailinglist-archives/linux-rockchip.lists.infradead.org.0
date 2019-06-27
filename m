Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4429858329
	for <lists+linux-rockchip@lfdr.de>; Thu, 27 Jun 2019 15:12:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7H+SmVA87NvJulw/+1tqp00GGVEcp2moYRnaBVdkNA=; b=MD8uzus5BMCyNN
	3tbrg10j04w/H7BJNiF9uPrBmR2W+8xN+18iiC9x8eoMlget5rRKQ6T/VTLJZXkbG669cZQdvYNT0
	3lbjHqcoOPwLcv6eg9T7fvRtIjrTElUCAumA9ITTeBjLzib63SBRTMRi1eeTbMuCFZFdwwvYr9gFU
	CcXrh4nN3oFLx6H8rXjVNsP3202Uob9ipzhljTaOFXtx7E5vPW5jDogtt2w+YOODaZtyZWdSfqu8N
	yfyc3d36YFWV7FTUlk1vZnolzo1RLdF3Flo/UZwK0EBwG4+Pk6JXEaou4px0toRmVEsKnn3fKTNg8
	zB4Lmzg1IeoTG5f6caQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgUCn-00028t-Aa; Thu, 27 Jun 2019 13:12:49 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgUCj-00028P-33
 for linux-rockchip@lists.infradead.org; Thu, 27 Jun 2019 13:12:46 +0000
Received: by mail-wm1-x344.google.com with SMTP id u8so5636942wmm.1
 for <linux-rockchip@lists.infradead.org>; Thu, 27 Jun 2019 06:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GXIzjnREiL9Y9HQEDVAGnktrwh3dcAP+6pdBlwz0BBg=;
 b=KT2uZb56pyLVxO1IiupMLtifQKwIA0OBDhzq/zEQoR5CGcUbpOrCuNmv+70m2gQ0r/
 A2Ul23QeuxEDTquAQ1GUAmIVvQtOQvlSje+hUkvqRfqgAtRa7cDykvllfA8Wn5jqwleq
 ai1v+OB4FZIJxh8kXd4eOlAj9W5fIROGs/Epgs/hLBwzfChPPutn7lFC+lu5IcHAyQup
 R4e3urK8Rd+5ecbPY0Z0tAL92ge0z2K5l2+UnrBGnFI8cydgQeqIb/wEflO2lrdGNjT7
 wXzHINbyEOGWTItUKSi8ILn/0Z1KO1sAMrVeaRTvDQ/aRYqTrh3vlzVjLYgIoB3AeVLn
 3Y7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GXIzjnREiL9Y9HQEDVAGnktrwh3dcAP+6pdBlwz0BBg=;
 b=daOEZ3vzPqXqcbAJBjp46MtSvyO8QHh+g4Tl5yzKdG4w1PwjBr5HY5aCuqh80XXXM2
 RKUpytXUzFV0MsvwkKZckp63nYutBsT/DfGFHbNwTbFEEWZD3n468zYBapfKdOx6J7XY
 BgeKUt6hrPkrPt4FblkwoL574r+IfQV0opQRX/0Q4J8685OuD1TAvIFaSZte+WZpqqve
 SrlaNLuCt9w1/7BWNeKQZsKpmqGfopGeaq8U3pFothSNFI2bgbfWyYdKe+od8Mr9wqkx
 jAPh2PpA7CKti9A4VmcqMYV84Zsaavu5C2Yt1B6f3cwfbVh4WRX8qSADjuIR8KQRO6Cu
 9Fsw==
X-Gm-Message-State: APjAAAU7m3WEaHMFhl6ZYZsDYrI2MZFK1kGCFFSC1fV3MsBs4maeKr5g
 U7pVFmT02Xugj4z8Godtsj0=
X-Google-Smtp-Source: APXvYqyi/AdN+va2FIL/iPzEQXur9Udumc9EB//EOTUbmMOjiOVWp/3+YvY86Ws5UH12PryHjDYrgg==
X-Received: by 2002:a1c:a807:: with SMTP id r7mr3128513wme.137.1561641163415; 
 Thu, 27 Jun 2019 06:12:43 -0700 (PDT)
Received: from localhost.localdomain ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id v27sm1440510wrv.45.2019.06.27.06.12.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 06:12:42 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 William wu <wulf@rock-chips.com>, linux-rockchip@lists.infradead.org
Subject: [PATCH v2] arm64: rockchip: dts: sapphire: Fix USB3 Type-C.
Date: Thu, 27 Jun 2019 15:12:28 +0200
Message-Id: <20190627131228.5223-1-vicencb@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <9087476.qcbMaj4rIx@phil>
References: <9087476.qcbMaj4rIx@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_061245_156866_7D20EC02 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vicente Bergas <vicencb@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Before this patch, the Type-C port on the Sapphire board is dead.
If setting the 'regulator-always-on' property to 'vcc5v0_typec0'
then the port works for about 4 seconds at start-up. This is a
sample trace with a memory stick plugged in:
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

If, instead, the dr_mode is changed to host and the phy-supply changed
accordingly, then it works. It has only been tested in host mode.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

On Thursday, June 27, 2019 2:39:59 PM CEST, Heiko Stuebner wrote:
> Hi Vicente,
>
> Am Samstag, 15. Juni 2019, 02:31:01 CEST schrieb Vicente Bergas:
>> Before this patch, the Type-C port on the Sapphire board is dead.
>> If setting the 'regulator-always-on' property to 'vcc5v0_typec0'
>> then the port works for about 4 seconds at start-up. This is a
>> sample trace with a memory stick plugged in:
>> 1.- The memory stick LED lights on and kernel reports: ...
>
> "git am" complains about the patch being broken in "line 21",
> so I guess your Google mailer somehow mangled the patch.
>
> Can you resend in a fixed way please (maybe with git send-email)?

Resent, sorry for the inconvenience.

> Thanks
> Heiko

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 04623e52ac5d..1bc1579674e5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -565,12 +565,11 @@
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
@@ -620,7 +619,7 @@
 
 &usbdrd_dwc3_0 {
 	status = "okay";
-	dr_mode = "otg";
+	dr_mode = "host";
 };
 
 &usbdrd3_1 {
-- 
2.22.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
