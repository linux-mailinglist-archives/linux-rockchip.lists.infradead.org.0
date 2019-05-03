Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4F01364C
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 May 2019 01:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kr605E5Qkg5FsILCri/EFcvXUUb0mbeVGyY7OXFcYTI=; b=eFjdvYezrQr7c7
	beebKvVyLqCJamoEjt6AfrtRp7GBqJ/W7t8RTxYVW0Gl5z1EqUHmF+xeWfVfKiZGCtTau8HcjBdXb
	JwG1HC52UDyKipp2yat0PzGTpEcAWRry662vZO9za0Ix6/skpc8vK1QA5MKa5Bj+Figmg6ZIa0zlT
	dn07ceT1++v42umDdMOyXJRuM/AehSmpomdkpiEG2xP5YubCcCGoAraeOk8RujrNwVHYPbOUtCRMs
	H5r7TvcaAcLFVxh1XEGthzA3D4EOI4cjrkgvvZbceJIH0KFHMS8abfdQuFnPSh8Gu1mbuaGMricfH
	sfvztWTg5bYPxX6qdzfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMhoT-0003sy-SF; Fri, 03 May 2019 23:41:57 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMhoR-0003sF-5N
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 23:41:56 +0000
Received: by mail-pg1-x543.google.com with SMTP id j26so3452570pgl.5
 for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2019 16:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l6MT9XTAzOvtTX/5BFhs9O1ystNfk4PRmB7Zlq4GEks=;
 b=I5fn02mFQifGjpN0d9pCsyFAkP0MMebBP27unuYA93mPS3ebr9BWDLvtr+yO1a2e6z
 QFv0PURfYyU3xNua5DcLsUe1CQxpXqCtmWtwy+EPAHfT9ko5ETR7YgNcCYM9ny4JGycA
 krx7V9STi0K9MjPb7O8DJBl600XH1dLo6AO1Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l6MT9XTAzOvtTX/5BFhs9O1ystNfk4PRmB7Zlq4GEks=;
 b=gW45H1V3X62kp0Rz6N6oB90P+ABBhGrUUFzDZLlkX5YbhLyo5suuySlOidR7/TJLT0
 Ry+L8bGtpMeDtUZ8d/Gn1jxrDbRC4UZUrHGORzuB9YlSqHq6WrWlH3aaDuVcBmu4T8ff
 7zK/oNAMT7TeZSQkhVrQ7U38DYjzBCPboLO6rpYDat4C5RtqWrMY6/Onp5KEBe80cCFy
 JKzUsPB12SXehPifVsNRcZErUQ0aCXjJBsPKcOy26iwMeo70LsOAKwrLqXuP2qXgwiI8
 LL+gn7ppMK6DsuWVCQm6pzNm1sjukGvQncP2bPFod4zcdlbFDRrOacLGsCaQbCYfqgyG
 6udA==
X-Gm-Message-State: APjAAAWyYQ2WjGqDd3/Ht+NxfeXv7Ai4f4LgYpur9rTk/2jhoFGfCH88
 UHP36aznwv/9a6l1lnOmdzJKOg==
X-Google-Smtp-Source: APXvYqwfAhHmGJSMOXVwAdgxx8w7CRNIyO+uqKMR8/EDcFyegYMrslQC+XFDA+zm7x6sp4sqFt9B4Q==
X-Received: by 2002:a63:6196:: with SMTP id
 v144mr14442228pgb.235.1556926914434; 
 Fri, 03 May 2019 16:41:54 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id c8sm4480462pfr.16.2019.05.03.16.41.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 16:41:53 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] ARM: dts: rockchip: Make rk3288-veyron-minnie run at hs200
Date: Fri,  3 May 2019 16:41:42 -0700
Message-Id: <20190503234142.228982-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_164155_235718_C3754530 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 amstan@chromium.org, Shawn Lin <shawn.lin@rock-chips.com>,
 briannorris@chromium.org, Douglas Anderson <dianders@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

As some point hs200 was failing on rk3288-veyron-minnie.  See commit
984926781122 ("ARM: dts: rockchip: temporarily remove emmc hs200 speed
from rk3288 minnie").  Although I didn't track down exactly when it
started working, it seems to work OK now, so let's turn it back on.

To test this, I booted from SD card and then used this script to
stress the enumeration process after fixing a memory leak [1]:
  cd /sys/bus/platform/drivers/dwmmc_rockchip
  for i in $(seq 1 3000); do
    echo "========================" $i
    echo ff0f0000.dwmmc > unbind
    sleep .5
    echo ff0f0000.dwmmc > bind
    while true; do
      if [ -e /dev/mmcblk2 ]; then
        break;
      fi
      sleep .1
    done
  done

It worked fine.

[1] https://lkml.kernel.org/r/20190503233526.226272-1-dianders@chromium.org

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index 468a1818545d..ce57881625ec 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -90,10 +90,6 @@
 	pwm-off-delay-ms = <200>;
 };
 
-&emmc {
-	/delete-property/mmc-hs200-1_8v;
-};
-
 &gpio_keys {
 	pinctrl-0 = <&pwr_key_l &ap_lid_int_l &volum_down_l &volum_up_l>;
 
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
