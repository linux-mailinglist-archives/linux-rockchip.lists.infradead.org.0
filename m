Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3A2E0B09
	for <lists+linux-rockchip@lfdr.de>; Tue, 22 Oct 2019 19:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvd1z2aWetcu+2fYreDxPvAnnOHau7AGDhOrqYJ/Sro=; b=LcZX13/vfm+ifc
	blA2sJ4muDlh+qib7TqBsZNm5zo0LuQPRRb/Ri+fezapA7GizzzYa4yrf5zxXna/EB2gNnsWbXaXV
	w1HW6+CU1qegFqMx2ymIMlbuYVH3jgFEsDbFJNSarn5XacUtN8q5HCR66UYRDxyaM+7Ht75CTReWN
	otEU6hH2Wo3UTmG7bQOgb6Nkn/jC0IWGH+anXwD83NmZPoDHBevf0wHgMLFXXH0Yj1F+auCzp98Kv
	EFoUXUY8rWJFjw1R9g++ed91cadd1zohV6R+sef2J2/uvQfRW2nDRID9Q1oeyx6Ml/AUThDFu9jQj
	cWuPMAMnhJNhOgQpnroA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMyNd-0006BU-1o; Tue, 22 Oct 2019 17:55:37 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMyNa-00069V-5C
 for linux-rockchip@lists.infradead.org; Tue, 22 Oct 2019 17:55:35 +0000
Received: by mail-pg1-x542.google.com with SMTP id p12so10396577pgn.6
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Oct 2019 10:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2IkWZzRngJxet0AIm/pNtj01aHuaBruy9KU220UwSH8=;
 b=f00a+OHuuVSkt6MfRc3+FXE1Da0JM3CUyAQI5UqxlyWAIwNDyE76O8Ro9NAis49css
 yYQXkVGOOl3xV6aNSsIGBKh/I4MP3RWFtupomrVdM4C8VNPcH618bQ1H6L8Rh3G7U8HL
 x7NCdWnXInbX3L5LDFvEiMSfQf0G5MYFxqpFg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2IkWZzRngJxet0AIm/pNtj01aHuaBruy9KU220UwSH8=;
 b=rO4bfsJdGmpmHjbOp+SH/cmIvKVFo/sQWnLzHdXv8y6ZrQroI+a77jbPtZOEGhSbfX
 VmDAitk3lFDsYxaGfzE5fRIuh1wnJUPaMTfwOqyvhu7n6RiI/q2fOmah0eRoTzl8hi84
 VeS/g/iqol3oisXAPvUE/8HIqO++A1WYoe1XmKJOUoDI9+xjmPWRTJQ/8D7Zmt5QrnIg
 L4Es1JQOdeRZZaY0JHrlTIjE3B32u1rvFw+Eyq16df1wCvMnPqAXuEH2oYOaDuUPYVwM
 iZ+oQNjXEpj6Mphhsk8L2W+UgtxbnF++FATJHI3MtZ9LQkNAdbl1pQ2DOzYar2LkmKHg
 tIEg==
X-Gm-Message-State: APjAAAVjBgGB3+PWWJsfY4+1816bp5ZD4X/dJehh49ew1rYj4BcPeXW5
 IP2Y5mgALbY3F/fFlUoS3W9hiQ==
X-Google-Smtp-Source: APXvYqweltUbhf45itK+mGJjfrHJCWEayh5EuTfwijfIPnPsfCZUJl2DPubsZFoqhIWlWv9FgtwGqw==
X-Received: by 2002:a63:7c14:: with SMTP id x20mr2151802pgc.208.1571766933545; 
 Tue, 22 Oct 2019 10:55:33 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id b3sm20454775pfd.125.2019.10.22.10.55.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 10:55:33 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 4/9] gadget: rockchip: Add rk3128 USB_GADGET_PRODUCT_NUM
Date: Tue, 22 Oct 2019 23:24:53 +0530
Message-Id: <20191022175458.22604-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191022175458.22604-1-jagan@amarulasolutions.com>
References: <20191022175458.22604-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_105534_201737_784B7367 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Add 0x310c for rk3128 gadget product number.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/usb/gadget/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index e120b48b33..2da8b40e05 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -59,6 +59,7 @@ config USB_GADGET_PRODUCT_NUM
 	hex "Product ID of the USB device"
 	default 0x1010 if ARCH_SUNXI
 	default 0x310a if ROCKCHIP_RK3036
+	default 0x310c if ROCKCHIP_RK3128
 	default 0x320a if ROCKCHIP_RK3229 || ROCKCHIP_RK3288
 	default 0x330a if ROCKCHIP_RK3328
 	default 0x0
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
