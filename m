Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9578B12CDA8
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 09:28:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRXNLJ7RtNTPup/j9Un5fAVsjhU445rGKq5UXRFxzr4=; b=B87OrOCIWGddHw
	UfwQs42aWmv2uQGM/93rAySJWEgRS0EM0FRz65hmUcYA5S8gtP0z/cBfs1o7dS/PPNAoV+pNMHfcv
	DGojAa6JjlU1k16aJk1moqRVS4D6e+t5HxaUW95fdD1wKVqMD7rPZY0tviUhzjtCIDvJdD7UsmeVE
	eOsRn7a2TV13YhJk/afX/59oMx6TD37tq0+s7aE9zIHPMVpxywTmDSOsfSSXlSEdfesXeSwm7TAa9
	ivjlPBN6N9F9bc1oyInxQ+mUoI/4yCoRzlFcXe6hkxrfZ/xxCaUIbz8yvp9un9OwHVOiw7JDQh/Ef
	I/OCWuKgPRFfYxkqyLPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqPs-0006PH-DI; Mon, 30 Dec 2019 08:28:44 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqPm-0006LN-3N
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 08:28:39 +0000
Received: by mail-pl1-x644.google.com with SMTP id c23so14353541plz.4
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2019 00:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fCEJAVTeFVKCDScEQscaeQ9cpdN3+DTMCdxgai1STTg=;
 b=izcUzUkelRtE6Wnb2ilaK6fgnKPzBNGP2zsMWbh6VTGuBcdhPiol8Ighv6duI9yqzo
 6gc5wyQSxksfeojINKIWlIXN+Sxl+CIjJp/5XS8MTmoOMKkEbjtTf2G5RASYbDYdLDY5
 jZWn3cfjJYMNAsRxhPtXZJ00RKKtdwrNi9WpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fCEJAVTeFVKCDScEQscaeQ9cpdN3+DTMCdxgai1STTg=;
 b=CPatV0n5U3jDera9W6WJMa31smuiNJvuruZn536m9IMfKrOCuaLEzBuBUmpNItZiar
 hEfEULlsNvQUOF6MN4/hMYmfpLxxQ9vrFev13Re8uTSqZwy/yaZ4JssvW6wkfNEJGSBa
 hjWZm3GEnIcZvOe0TiNI5bAOvHTPkgB1O//QJTpIdqjVQgIpN6QtN2bl4EWttUg9GekF
 mX75IJjaQeNUxiQIr7Dhm0ORfRxrM0E6gXHh0QBl6jJY3PGxcw6HyjeFS/gOojPVD63D
 JKa3W7RJPxGDl+lEOg0VAw/wXSjlQ7FK0I65Px/TRtJzucvznZZ2Yn/Jljh6gpUYVWGZ
 5s+w==
X-Gm-Message-State: APjAAAXVKeDdBE3U8S8NwX2H86RaM0fKMyTejXg+4dCJFdFBWOWF4HlP
 NcZE0zOFddBBWP29RkLElM8cBA==
X-Google-Smtp-Source: APXvYqxUdfw/i9uX2eHMHfDScDdhKbZTuTU3zkHo7hqCgM+VkETZxgc8w1gq8BMCIqXszJq9NLLMDA==
X-Received: by 2002:a17:90a:d985:: with SMTP id
 d5mr46209111pjv.73.1577694517271; 
 Mon, 30 Dec 2019 00:28:37 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.131])
 by smtp.gmail.com with ESMTPSA id s1sm46240652pgv.87.2019.12.30.00.28.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 00:28:36 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v5 3/7] Makefile: rockchip: Support SPL-alone mkimage
Date: Mon, 30 Dec 2019 13:58:15 +0530
Message-Id: <20191230082819.30191-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191230082819.30191-1-jagan@amarulasolutions.com>
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_002838_140424_96B191A7 
X-CRM114-Status: UNSURE (   7.69  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Add SPL-alone mkimage tooling support via Makefile for
few platforms or boards used in rockchip family.

With this users would get rid of explicitly creating
mkimage tool for rockchip rksd or rkspi boot modes.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 Makefile | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index e519103be4..d8a0f68883 100644
--- a/Makefile
+++ b/Makefile
@@ -908,7 +908,7 @@ ifeq ($(CONFIG_MPC85xx)$(CONFIG_OF_SEPARATE),yy)
 ALL-y += u-boot-with-dtb.bin
 endif
 
-ifeq ($(CONFIG_ARCH_ROCKCHIP)$(CONFIG_SPL)$(CONFIG_TPL),yyy)
+ifeq ($(CONFIG_ARCH_ROCKCHIP)$(CONFIG_SPL),yy)
 ALL-y += idbloader.img
 endif
 
@@ -1382,11 +1382,19 @@ else
 ROCKCHIP_IMG_TYPE := rksd
 endif
 
+# TPL + SPL
+ifeq ($(CONFIG_SPL)$(CONFIG_TPL),yy)
 MKIMAGEFLAGS_u-boot-tpl-rockchip.bin = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
 tpl/u-boot-tpl-rockchip.bin: tpl/u-boot-tpl.bin FORCE
 	$(call if_changed,mkimage)
 idbloader.img: tpl/u-boot-tpl-rockchip.bin spl/u-boot-spl.bin FORCE
 	$(call if_changed,cat)
+else
+MKIMAGEFLAGS_idbloader.img = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
+idbloader.img: spl/u-boot-spl.bin FORCE
+	$(call if_changed,mkimage)
+endif
+
 endif
 
 ifeq ($(CONFIG_ARCH_LPC32XX)$(CONFIG_SPL),yy)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
