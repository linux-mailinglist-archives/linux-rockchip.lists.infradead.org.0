Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA975E0B0C
	for <lists+linux-rockchip@lfdr.de>; Tue, 22 Oct 2019 19:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Rbw3uEyLQem+38STiNMAYUcYMgZcU+P3uzOhM6sHXQ=; b=A5+ElpQuvCXBRl
	4Iv7NhwIORsUTm8f8KI+TTp7Wgw8z0yaOt3vGe0psm7qOxo9uY70dDKPaEyZv2T7BZg69Lwg+Qmhj
	kwJ/b4/fUiTgzqnyBP0Zv1p+d+4cfDAC+3UWKi9g+AywzoMPJFDq0McGZw6w/sRivqDHcqicEEWFC
	21X71ntxwYTIA7BZxS+HQLNI04i5e+fsggkaP1UyfYyf9SLNaYXutPTdhm443tMY7jvQ7dcVdaHwa
	EDdauve9wcyITmefXk67vx1FWFoN95EO24b4ZdoRUp1BBlZ7dYjL3evVhVObKxUHfJvmr6yvz7d71
	rpURp4qv9pElZo+W4Heg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMyNo-0006KL-FG; Tue, 22 Oct 2019 17:55:48 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMyNk-0006Hc-SO
 for linux-rockchip@lists.infradead.org; Tue, 22 Oct 2019 17:55:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id c184so1594907pfb.0
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Oct 2019 10:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xaXVYnQV60TcMl3kjiVPjabM6ky1sc7ktGjIybdCnTE=;
 b=neUGHhPUvCXGa8MadhGxoms20vwIucjtCafKtFueFLiC9nQzJa4nacnVMeYHhYZPpE
 wjyO7s/Fi/gJ6Yz4yRA4WNJ6gMEiOhXHdw4w+zAda2K49pfiOcpb1ptLz26Ricm0tz58
 pgamyMruHBe1q4WoD0heEnbWEpOlLvcFq9yhA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xaXVYnQV60TcMl3kjiVPjabM6ky1sc7ktGjIybdCnTE=;
 b=BvzBLTJxgNAbqlqob6k2KWU7Tw2+Nivjs0xUcklLnjyuS7S/e5cpJ54giSaMDm+2eQ
 8h6w7llTZ849bdEGvcgoUbauzg7Yah2767ItBHoNa8n1mi3KgLUWwVQDmwqi9Z0HNd5l
 ZWXfeFH82cx1Wv7cDJv2Pc/tQyLLeOvYSRTK5AqewG6JdDvjW9IhwNM0wkgpwoCsiY4t
 /tUbZeXpNNS6f0Y0y5u7ORD9vFkInXvGVyZXk9L7JrV5a6QNl2CX28QEyWG2m8v9990f
 cfKLVJHcJJBVXBwcRYbCJ06MwbV1iGwJRiFFsmhNoTCx5Sv+k3BZuGwDCrL/48t1LYfA
 xb2w==
X-Gm-Message-State: APjAAAWK4HnKB5S0JVyQ7887OXxDIwKJGXaGLnA8YresadGrL639fg6m
 3Ev1for+vo/CV0bxAScvInT2uA==
X-Google-Smtp-Source: APXvYqwjOCleK17t+31WY2mK+v8ug/7seYgK+gHnftyQNfDXgOjQ242ne5h31koTnP1dpqzjiMX82w==
X-Received: by 2002:a62:5284:: with SMTP id g126mr5686246pfb.95.1571766943815; 
 Tue, 22 Oct 2019 10:55:43 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id b3sm20454775pfd.125.2019.10.22.10.55.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 10:55:43 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 7/9] gadget: rockchip: Add rk3399 USB_GADGET_PRODUCT_NUM
Date: Tue, 22 Oct 2019 23:24:56 +0530
Message-Id: <20191022175458.22604-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191022175458.22604-1-jagan@amarulasolutions.com>
References: <20191022175458.22604-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_105544_935036_4D9A98EA 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: u-boot@lists.denx.de, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add 0x330a for rk3399 gadget product number.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/usb/gadget/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 2da8b40e05..b0e61f3fcd 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -61,7 +61,7 @@ config USB_GADGET_PRODUCT_NUM
 	default 0x310a if ROCKCHIP_RK3036
 	default 0x310c if ROCKCHIP_RK3128
 	default 0x320a if ROCKCHIP_RK3229 || ROCKCHIP_RK3288
-	default 0x330a if ROCKCHIP_RK3328
+	default 0x330a if ROCKCHIP_RK3328 || ROCKCHIP_RK3399
 	default 0x0
 	help
 	  Product ID of the USB device emulated, reported to the host device.
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
