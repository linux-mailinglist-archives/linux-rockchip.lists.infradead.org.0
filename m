Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9F71F3D92
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jun 2020 16:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hrxji58BQvaj/MBCsz2L/ovMgsoVjGn88VTLfjdfl8s=; b=AuYt071oBd8n0o
	y5BC/qMIM4q8M4KAGJnDr6qD2itkm3WegMxGvL/f6XvrPsCbjRVTj1Pfq97HwgiU2Mrq5XVQGGeqD
	PU2TkbGBxv9KP9GXbkJGK3IcFtRY2U0X7421MSkFIU6R97jwvM+s1yAIUIRuNVd28ynzfwcpK5WlQ
	fKZAViiNTqDp328SN9MHS0pYHzX+Fl1VQe6BQgTQwcMgApzwVdYKJCndYGq7qqRJT3BZ/8nyJcEA4
	OzY9FeWx7SzmU4ZJjq05yjW/dz4oQnodmEolK+3n9Dqp5nszv9xuz/6Fi0FYY8Z1pT3oKMZd84jRC
	zFMshtg5yxFsBZgnD3HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiesu-0001Og-Cj; Tue, 09 Jun 2020 14:05:48 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiesq-0001Eh-O3
 for linux-rockchip@lists.infradead.org; Tue, 09 Jun 2020 14:05:46 +0000
Received: by mail-pf1-x443.google.com with SMTP id z64so10134372pfb.1
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Jun 2020 07:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f9CrqcnaefmHITTXwApYWeo0mtWKOQnGsVEcpxOXfhI=;
 b=JBJSiEHIFI3buTLjFk5PvwntfKCzO9sTPv1Kd/b/BtLK47Pebb4h0qLouI0D7W6Y9I
 jxk6Aw/RmkyqYJoMHE422vJgDiKTChy6rzLV/prT1OSxNoloFLDOK8z9oLTt6sKpJOzr
 5+bqVS7Nf1kvue7mehbOqmXzgepi81Of8xjDM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f9CrqcnaefmHITTXwApYWeo0mtWKOQnGsVEcpxOXfhI=;
 b=qY6Mj7Eq3mchcV7iE71oY3lVr98aS/a+Yc7LXIQ5S0d8bl+7tcDel4E6b0g03deVkZ
 myWBVINkg2vPoWYAu2ZRdbdMuses+MEcLrr9k4MKjDqX2QJ+dLzs3/W8F086QA/pPvRH
 9q3aLrmewS16zYiX3TmE1MdMeuCOzO4+oqZ2kz+7Rq0a++GIaayIRrsHhHi6D7ZIVffx
 GVS2JfrD/aJOguvbKY218wgYJ6kWhlghDJOIit2xopxq1Kc+MvWnFtpUZy/z0OeT4m25
 HTpPRx9Z6dLDdyHLH+VLbtarPHtnis2z6TyTKTysxQw6guPfIEY6OOv8M4ZRiM+RffJp
 yUFg==
X-Gm-Message-State: AOAM532DgKhcPMvsoCNjn9UFyCiI1mRLtNPWiPZii9s93vxhtloiY/s7
 /Fc9M+W6vpXljkYtLH/LUfo4rQ==
X-Google-Smtp-Source: ABdhPJwUWoMUA7gjEpXahv0TTMb16+nlgmwQrXH7It5QA4yOl7Gy9fh9x8HxfbXYJXEt9Q1NU1c2Ng==
X-Received: by 2002:a62:1654:: with SMTP id 81mr26437119pfw.137.1591711544093; 
 Tue, 09 Jun 2020 07:05:44 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6575:fcd2:e4d4:715a])
 by smtp.gmail.com with ESMTPSA id e12sm8961817pgi.40.2020.06.09.07.05.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 07:05:42 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH 3/3] roc-rk3399-pc: Enable USB Gadget
Date: Tue,  9 Jun 2020 19:35:14 +0530
Message-Id: <20200609140514.132579-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200609140514.132579-1-jagan@amarulasolutions.com>
References: <20200609140514.132579-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_070544_805600_73EBEA70 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable DWC3 core, gadget for roc-rk3399-pc board.

This would help to use fastboot by default.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
 configs/roc-pc-rk3399_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 80e7001481..046fb73858 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -12,6 +12,7 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SPL_SPI_FLASH_SUPPORT=y
 CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
+# CONFIG_ANDROID_BOOT_IMAGE is not set
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc.dtb"
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
@@ -61,7 +62,9 @@ CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_EHCI_GENERIC=y
 CONFIG_USB_DWC3=y
 CONFIG_USB_DWC3_GENERIC=y
+CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_KEYBOARD=y
+CONFIG_USB_GADGET=y
 CONFIG_USB_HOST_ETHER=y
 CONFIG_USB_ETHER_ASIX=y
 CONFIG_USB_ETHER_ASIX88179=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
