Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64708101D3F
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 09:27:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtMFCKl0DpwmH4cbpZV3RBgn99lD8ohplx40rd0CWow=; b=XH50/qyVz/v1TU
	n+Zmb3aXsY37guB2gQ9KzEW/KGKmjwK+UvJBY6QNpadebjQF9f3OFVLIjAI8TjTfMOFZYlm1xlfjs
	tFuJYXD2HnmSgEgVKGvGL8A3eCsYldOC59bWygQ8iyG6RrQS/btlI2Xv7W2kd9QirrtCV/x7OEeJO
	ZuSrIWLTfifGJWtAwMGsa5naqR16SrFMhVGgSObKaE20DhzLN8LHIMGbMbkJQ+Cj2fFKYFmft+cYk
	GkvbNUgaKfhGhV2qkpZEKL60AI2Wzjm/nO181NuZjofMBri+5nK2WmsEwdw3sDfoXN6QeDsz0SfDj
	OuUoYxziuif4CdkaAwmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWyqn-0001yq-Dr; Tue, 19 Nov 2019 08:27:05 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWyqg-0001sX-Ek
 for linux-rockchip@lists.infradead.org; Tue, 19 Nov 2019 08:27:02 +0000
Received: by mail-pl1-x642.google.com with SMTP id a18so11361390plm.10
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Nov 2019 00:26:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WX0Amw+vDSxUXCVgklEC0WvIWpGjUT5UbdggutavXys=;
 b=rJP3Rub4EGEhjklQiYqCnirAYgpD9TD5dV3+u7ibxtsnm+IqbAhwmBABh7CfxjkekJ
 Beyj6JFqxyn6DqoWbhOOlaQmstaO30SwBQeO4LDI//jtPA7DgiR+CcEIOMIp8ZuVnTA4
 zXTXfnL6BuSj8BYjNVK+rEeJ8shKBkaFaSM5c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WX0Amw+vDSxUXCVgklEC0WvIWpGjUT5UbdggutavXys=;
 b=cdoU8WqCMizP8AGNK07bAlO3pQbRhhIcPJcnMTa3MeKWRTVcIuzeMYDDT0c/F916U7
 NJerlonq9QZfCH6/4/cdLKu6eqeZjKiL3fuhY3IWx1CMzw5UQcv4wWcs0WOMSAK5N5ML
 jb0Nf1uQSoZ+qCO9KkkUWvbgxw6+/kYMGTdvkQqErw9rmEXvstPMt01rp7UVa+QHtWAd
 9kuYulCIAeZzae2H/eQqqlsDNvVixxwtszx4nqo3Qhte8iYtpUsZvLNBEYR4Bd31ws3t
 fbjs/brGUm78kR6neupR8eNmxiwDkJU1Tb0qsaaqdRsZMps3G+KxFxrLZ2jhBiC4419Z
 KtMA==
X-Gm-Message-State: APjAAAUHSXfVjW+mxMoFj3ILe2qEHbjP77qFcTjBfE0vsMN0gCH5Xglz
 55OpgQUpSOA0/kA67Gm4dkLtPg==
X-Google-Smtp-Source: APXvYqzh0JUwbK3iMTVY7PeP8KQjjk9NXLiZUzQ4hNbifH9g0d2zOyqOfMl5OtQol8zh87rdSn0ByQ==
X-Received: by 2002:a17:902:9889:: with SMTP id
 s9mr34438079plp.18.1574152017915; 
 Tue, 19 Nov 2019 00:26:57 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id u7sm2312221pjx.19.2019.11.19.00.26.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 00:26:57 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 08/10] gadget: rockchip: Add rk3399 USB_GADGET_PRODUCT_NUM
Date: Tue, 19 Nov 2019 13:56:21 +0530
Message-Id: <20191119082623.6165-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191119082623.6165-1-jagan@amarulasolutions.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_002658_505125_C9C922B2 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add 0x330c for rk3399 gadget product number.

Tested-by: Levin Du <djw@t-chip.com.cn>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/usb/gadget/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 2da8b40e05..58ca82d4de 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -62,6 +62,7 @@ config USB_GADGET_PRODUCT_NUM
 	default 0x310c if ROCKCHIP_RK3128
 	default 0x320a if ROCKCHIP_RK3229 || ROCKCHIP_RK3288
 	default 0x330a if ROCKCHIP_RK3328
+	default 0x330c if ROCKCHIP_RK3399
 	default 0x0
 	help
 	  Product ID of the USB device emulated, reported to the host device.
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
