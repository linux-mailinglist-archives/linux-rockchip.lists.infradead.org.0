Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 074CF9D5BB
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 20:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ur1kAAo+FD1vo9rAGmPCRfM9Us+7I5BiZ1v1Dl1E3tE=; b=FOP8DUMJfhARWN
	GqACSGFr6XGR5R4e2lwtgGdFvoNYcbq++mjHn+KZylxX2A0Ja18YEXyCal+2Xqp0jiCxHsUF6tBm2
	hyHM9bC1v6M7p6Ckxe/+fuKrx8z2M8ee4YbthjPq1jM1egu44j4lhqy9TAR6NlGb1cqE8o9d+6A2J
	9lg/MNvr4b87sNaWQyGi33bFiLDDOEkLvfXDOPe7mH4BmOZu71OC99WxZRmPhL972DIr5lxxHl0mB
	7ASzgmUbGZBxZd5AjoyYFAeUMn8HvdyYRTAFyqlhPDNeBIr8kDIpwuya0gcj+bZX8OEKzQVvHcoEa
	u8MsX6Oj2c1duUk0/bzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Jco-0001nv-IG; Mon, 26 Aug 2019 18:21:54 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JcU-0001UC-Pq
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 18:21:36 +0000
Received: by mail-oi1-x244.google.com with SMTP id n1so12869693oic.3
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 11:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x7hpSiGKoa+pKinmnYoEJnOjDHqswnX4hTwS5+hoHIQ=;
 b=US81vCc5F+IskVj8OI+8hIK4UxFm7tn+Uh1f9TAXShVyiWzRrIOMDeR2XAhUJSS36b
 Qy9ugaFEZPhAdiW282ZZqjZL6EnIOqK8XDeoGfFA4LUvxXgiAawKz9cJ5De+Y1PRGKjv
 Pu71vzQGbEyEwONeh2KbBZ4vCOb5vy4AE2A2A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x7hpSiGKoa+pKinmnYoEJnOjDHqswnX4hTwS5+hoHIQ=;
 b=QePvenXwas6e1du29N1DrrnX/PembqxEBdvZ4XfVIFFWl3nkaKWzPkfFyFXE8JvhQv
 G2i++6YKo9O1Y4DuBd52+u0c4l/b59akeYRMrFGrq+cRSBEDMgZjzKtDPd7xyJ9Is013
 qJicEI9W+qs9ZAo3uN26elmzcJN+NHh2dZqowGo/g+wjVro/w9haMUTvZLzr4i+p9kB7
 jZxLaI8xinAyPKU3A0lcoCmaLaHAeap9feT8sIJwnSaHwfchGljDBft3CN3Ge2zNia8Z
 GIfTi68sGGQkU+/mrIh9UfdXBP0GQuL6ZV0qQ6FkgY1Ajw4gElZqSOXiR0KU2vFLOh94
 jebQ==
X-Gm-Message-State: APjAAAUF9EE/ILVVvtFKwigT3vS813S9rQmsWjHrm7e4jo28IgHK87IE
 oN9V4xd5gpKtvopd0UZ8DeCBNg==
X-Google-Smtp-Source: APXvYqxuoBhHS2QESuu1hbpx+pvM1yDMs5N54Jp1JM0IPxJ1L4FuVsYbJh4acbTmhQMSnDh3Zc4rCQ==
X-Received: by 2002:a54:4117:: with SMTP id l23mr9138452oic.37.1566843694137; 
 Mon, 26 Aug 2019 11:21:34 -0700 (PDT)
Received: from jagan-XPS-13-9350.attlocal.net
 ([2600:1700:7430:38e0:d5b0:4823:33c8:5e46])
 by smtp.gmail.com with ESMTPSA id c11sm4401461otr.54.2019.08.26.11.21.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:21:33 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 12/16] spl: Add watchdog support fot TPL
Date: Mon, 26 Aug 2019 23:51:07 +0530
Message-Id: <20190826182111.30999-13-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190826182111.30999-1-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112134_932878_E47499B9 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add support to build watchdog for TPL.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 common/spl/Kconfig | 9 +++++++++
 drivers/Makefile   | 2 +-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/common/spl/Kconfig b/common/spl/Kconfig
index 660aa66d84..d4c5956b18 100644
--- a/common/spl/Kconfig
+++ b/common/spl/Kconfig
@@ -1370,6 +1370,15 @@ config TPL_YMODEM_SUPPORT
 	  means of transmitting U-Boot over a serial line for using in TPL,
 	  with a checksum to ensure correctness.
 
+config TPL_WATCHDOG_SUPPORT
+	bool "Support watchdog drivers"
+	imply TPL_WDT if !HW_WATCHDOG
+	help
+	  Enable support for watchdog drivers in TPL. A watchdog is
+	  typically a hardware peripheral which can reset the system when it
+	  detects no activity for a while (such as a software crash). This
+	  enables the drivers in drivers/watchdog as part of an TPL build.
+
 endif # TPL
 
 config SPL_AT91_MCK_BYPASS
diff --git a/drivers/Makefile b/drivers/Makefile
index a4bb5e4975..82f9ac4445 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -23,6 +23,7 @@ obj-$(CONFIG_$(SPL_TPL_)SPI_FLASH_SUPPORT) += mtd/spi/
 obj-$(CONFIG_$(SPL_TPL_)SPI_SUPPORT) += spi/
 obj-$(CONFIG_$(SPL_TPL_)TIMER) += timer/
 obj-$(CONFIG_$(SPL_TPL_)VIRTIO) += virtio/
+obj-$(CONFIG_$(SPL_TPL_)WATCHDOG_SUPPORT) += watchdog/
 obj-$(CONFIG_$(SPL_)DM_MAILBOX) += mailbox/
 obj-$(CONFIG_$(SPL_)REMOTEPROC) += remoteproc/
 obj-$(CONFIG_$(SPL_TPL_)TPM) += tpm/
@@ -53,7 +54,6 @@ obj-$(CONFIG_SPL_MUSB_NEW_SUPPORT) += usb/musb-new/
 obj-$(CONFIG_SPL_USB_GADGET) += usb/gadget/
 obj-$(CONFIG_SPL_USB_GADGET) += usb/common/
 obj-$(CONFIG_SPL_USB_GADGET) += usb/gadget/udc/
-obj-$(CONFIG_SPL_WATCHDOG_SUPPORT) += watchdog/
 obj-$(CONFIG_SPL_USB_HOST_SUPPORT) += usb/host/
 obj-$(CONFIG_OMAP_USB_PHY) += usb/phy/
 obj-$(CONFIG_SPL_SATA_SUPPORT) += ata/ scsi/
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
