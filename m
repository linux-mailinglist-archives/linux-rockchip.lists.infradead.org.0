Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B505B1EE6F7
	for <lists+linux-rockchip@lfdr.de>; Thu,  4 Jun 2020 16:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QEXCGcxEPEgjoNoaH8Z/6Jgvh/dRXcmTHPspQCml3os=; b=M6Egi9HM4N5cCZ
	BoEu0Fh/r73PgFgf3l2OHdaDk3Lhw7fpnT420EpfMsTwb+mVkdry/NJfUw0RNjWfP9dex9Q3diEQr
	1578iV4+jSEMrb1Sjj+mqgdpe3NmuBAUUvdwVA8H5/VanUDU02vmF/L4q4hBXjxQA0c7rYXQwRIs2
	ENTBYhg5xMRR+nx8Tg19jKt+hoqvUrv7jCWhNDWSTvwS4+TqX3qjS3xmsjFk58WM090lvujKNVQm7
	2tDbhACs0BR54zsPX9FpAno69jtebTf2GxyEwgAEOsoL1U+H8eJN7mdCvOL4RUNXiuqH5nhOew4OG
	fH0Mu5v38vQtQjNZQtGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrDr-0006ci-Jo; Thu, 04 Jun 2020 14:51:59 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrDn-0006b3-8C
 for linux-rockchip@lists.infradead.org; Thu, 04 Jun 2020 14:51:57 +0000
Received: by mail-pl1-x636.google.com with SMTP id y18so2272374plr.4
 for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2020 07:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hIU1j2WlYtnQDJxwkJ0X/qXVrkbjSF6Dlue7QXZ2nNY=;
 b=KVGLo4ZQ6Ae9tkVZ2DTUN/lt6UyxAeTcn9oFz6mLOJWGlZSU9P8H8aJid81t+6Qc9S
 25xyd/GIuPiaekBdr+wn+SF1V5HE/2/pYm2wd7ezTJknmz7cv30sM4ie7lFI5bIz6vfM
 XPZ4KokWqzMpfVD+WVkKOpwv4uTXwsTAuFRBs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hIU1j2WlYtnQDJxwkJ0X/qXVrkbjSF6Dlue7QXZ2nNY=;
 b=Lz2pkPcYOrrZOLLgKj+IYUCxeXRfJxR+5tW3+RaTjuYCes2LigOm8i2nvbD1b6RXRw
 lnRE80ymLHbtBwcUqC8OZ7GC5i+n3ynVTTXlXerpce5P229YPnW54WULUdjgENMRKdNG
 Fu6wD7jymXFN7IyupvEfQC5GmSsfrgdtb2TecVNXry2eKJM9P0W680axQauRb2HY2enl
 rcUH4MBV2wdV3PIQa4QLn01AHU2ktIw+IRHwO1DrVuH8a18kfdB7DWwBDqID4kqukoln
 vwNEOU9bBszI51iIXTbaFC0FG+EOIqa3XyuTqVNlwAv22vsgKBh44JicsgmRxhxkDiPu
 ZaiA==
X-Gm-Message-State: AOAM531z8hyZSOsM0dSPrfChwQrDNAHXBQFb1qgks3pubJDt6KyqcY/U
 +skDfQnfus3s4JWN8tiBR4n4gg==
X-Google-Smtp-Source: ABdhPJws9rLR1eRoxrbcnMEU3Kbc8jea7Ugu1Zv156dcpguyYNOn5Hpu1FJ56UTck+fZAioqJUjW3A==
X-Received: by 2002:a17:90a:220f:: with SMTP id
 c15mr6690523pje.129.1591282312943; 
 Thu, 04 Jun 2020 07:51:52 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:41f4:94a8:1af3:a574])
 by smtp.gmail.com with ESMTPSA id 2sm4831283pfz.39.2020.06.04.07.51.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 07:51:52 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>
Subject: [PATCH v3 0/4] rockchip: rk3399: Add SPI boot
Date: Thu,  4 Jun 2020 20:21:37 +0530
Message-Id: <20200604145141.356702-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_075155_726017_6B204819 
X-CRM114-Status: UNSURE (   5.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:636 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Thanks to Hugh Cole-Baker for inputs about SPI boot
image creation.

V2 changes can be available at [1]
Changes for v3:
- SPI env offset, size changes based on roc-rk3399-pc
Changes for v2:
- same defconfig to support both MMC, SPI boot
- add spi flash program document 

Any inputs?
Jagan.

[1] https://patchwork.ozlabs.org/project/uboot/cover/20200601204213.466120-1-jagan@amarulasolutions.com/

Jagan Teki (4):
  Makefile: Drop to handle rkspi image type
  roc-rk3399-pc: Mark default env from SPI
  roc-rk3399-pc: Add SPI boot
  doc: rockchip: Document SPI flash program steps

 Makefile                                  | 11 ++--------
 arch/arm/dts/rk3399-roc-pc-u-boot.dtsi    | 12 ++++++++++-
 configs/roc-pc-mezzanine-rk3399_defconfig |  9 ++++++--
 configs/roc-pc-rk3399_defconfig           |  9 ++++++--
 doc/board/rockchip/rockchip.rst           | 26 ++++++++++++++++++++++-
 include/configs/roc-pc-rk3399.h           |  4 ----
 6 files changed, 52 insertions(+), 19 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
