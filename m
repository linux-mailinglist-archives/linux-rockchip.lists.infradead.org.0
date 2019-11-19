Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAD9101D3C
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 09:27:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvFBEMUlyU4IU3CEtzC5fWSgNdT6YgSzmERV7YGv/Xc=; b=m+FAogIm6F6NbS
	FpO0r65WUOLxO4SU5YKXsm5bZmYUtnLSSb87i8bqebacZpUB6TwBR6v+tQbCscZ4TzCxBd2FYsUfW
	MIA0omGQxocJmIdIFTXvbbJKrB0DYtZDr6Ii59yljOYwei2m9GAaYDCxIrBAahg8SIuIDEz8AmzAD
	vbJnUsbQfw5U59cqAkfEt+3CQwZmKFcMJ9FoKIbsCiaLsbsqyXo/PPVJKKXtE6ZrKbWcT2nB58c3i
	0seiJ/kEwrYT0O+BxY+8somZ9V6DGQEf+DefenvCpkP4l1AkYPYcSGyVeaHKb5RHTO3AgA/6Vp38I
	IBgQdSjeihAgS3MfIjXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWyqh-0001st-A0; Tue, 19 Nov 2019 08:26:59 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWyqb-0001mm-AH
 for linux-rockchip@lists.infradead.org; Tue, 19 Nov 2019 08:26:56 +0000
Received: by mail-pl1-x644.google.com with SMTP id e3so11369030plt.7
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Nov 2019 00:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=auXeqGHIPgKLvVG4xdF24akyF6hV7KktTkm9UMWzojA=;
 b=K22EpT7ddkDLQ2k4KRNlgBaYR4UTlbMLyoe+iqRxukV6TelOUGB80dNTB526xk62M0
 ccxET/iyPI5JBX+SCMHzKeDMyZQqA+7naxxjHxYKJKrfd6uKQjrQM3QiQ+o/oUTdly98
 OYEko/3Wd5tOYxN7dIKeZBK+BxoPD8CmQv4kU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=auXeqGHIPgKLvVG4xdF24akyF6hV7KktTkm9UMWzojA=;
 b=Uv6l9fBPXcsg6PuD5C6mMsewFdD5JnmqxBboB4Cft49LwKfxziaAjwj8bQ0uFsZUOj
 ZlOGqabaiSMTPbWndVKBIlkq6jT1rFWVs+n1QRSbLiV/rRXZd55V/+3fks75abyLbd98
 3eZj0jwRK8WDePVwsR/OxBTpJu9+X1/eV07dora1NRedDCIY5QqlPg8AKkbSCU/sBdVv
 NYrO2cB4cPZjJ1s0zD7Fr7nW6KKpy6w7gFoIfzO1o7lAlvkq+sfLQ0EPiWPQYQPDO5N6
 jzeOHO4TSsUmk28Mp21QxfIg2mVUDZaWGxrMCGdLJXUJp0rPiWgdA0/74UhSH5fyyvt4
 GOOw==
X-Gm-Message-State: APjAAAWEe5iGtGvn2do4Yr67FcKLMYY5BCfCIUQi2Gx2tOJkM6qVE0jW
 kGXvOfOgr9t/j0PkyNfWotL/UQ==
X-Google-Smtp-Source: APXvYqzpRPKUaXGQj2twC2xKb+HJj6oy6/xfRA066IiU3e1NY0sXLZEMLGi22fiOurL8zk6H7ANl+g==
X-Received: by 2002:a17:90a:2a44:: with SMTP id
 d4mr4652002pjg.91.1574152011733; 
 Tue, 19 Nov 2019 00:26:51 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id u7sm2312221pjx.19.2019.11.19.00.26.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 00:26:51 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 06/10] fastboot: rockchip: Fix rk3328 default mmc device
Date: Tue, 19 Nov 2019 13:56:19 +0530
Message-Id: <20191119082623.6165-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191119082623.6165-1-jagan@amarulasolutions.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_002653_364085_98388A7D 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

Technically the default mmc device for fastboot would
use eMMC if the board support for it.

Rockchip platform access device 0 for eMMC so, use the
same device number for rk3328.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/fastboot/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/fastboot/Kconfig b/drivers/fastboot/Kconfig
index 34864ca613..433ea0dc3b 100644
--- a/drivers/fastboot/Kconfig
+++ b/drivers/fastboot/Kconfig
@@ -89,7 +89,6 @@ endchoice
 config FASTBOOT_FLASH_MMC_DEV
 	int "Define FASTBOOT MMC FLASH default device"
 	depends on FASTBOOT_FLASH_MMC
-	default 1 if ROCKCHIP_RK3328
 	default 0 if ARCH_ROCKCHIP
 	default 0 if ARCH_SUNXI && MMC_SUNXI_SLOT_EXTRA = -1
 	default 1 if ARCH_SUNXI && MMC_SUNXI_SLOT_EXTRA != -1
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
