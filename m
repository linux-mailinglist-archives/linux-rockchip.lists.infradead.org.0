Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7842B198332
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 20:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FZPmiCGeMK3LLHM4ud9LBpZ9FjUTFqvWlKtnRn1LXyI=; b=W9xn6n54LRO4NvKXn3aGfqIV5J
	2WHLWhJxLDg1Q2r0HPK/VBKlV7i3XZevSaJIwyv9bCK/3pzaFatbqzOTw3zpYN+ywfGdsRKrf7XXu
	aGxWgtnA3BTYxOohsB9nomy7uq8kijT+KbKtIlVoS70V7oWDviVsAyIRFends/jHoNlr3sGuJdkHK
	6EyzjFI7YeSiNGCirI+mWaqu1unheDIkwK/Cu3zj/IwLJaZl1o1Xa6MQhADDSjlPv2QkwpTvRtBHQ
	NHQDLkXyA73PHxzlqU9CSzwsGYkrRdsRxCYfpVVQbkFl32ufMP0oRLqjQtdxKWDFfHRnko8nT1xeV
	iD8LPDKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIyxo-00026a-CE; Mon, 30 Mar 2020 18:16:44 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIyxh-00021C-4d
 for linux-rockchip@lists.infradead.org; Mon, 30 Mar 2020 18:16:39 +0000
Received: by mail-pj1-x1043.google.com with SMTP id q16so93536pje.1
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Mar 2020 11:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gvUS8A/eL7b7o1g6E1PL+fAftkvIDyBq1evUjTl0k/Q=;
 b=fRsHvCK3eCxwlchVxl+OqTDyU2fSMlNiT6P0Z3g2iayOCydVeHdOmOxiJ1MG5Kn2YO
 5DVCgBwkzDbuKxQq/rPvKHZV0hSSWsMOtv6/UGU0/RtLUj+9qQtEZVc8USt1x+zF8l+e
 pDKvCXkjWIyJ8Cuidx49zgysGq9yYvkrEXANs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gvUS8A/eL7b7o1g6E1PL+fAftkvIDyBq1evUjTl0k/Q=;
 b=tRTdSJQbP7/nsOcjg0LcbZy0rfJBcSFWxHtrxjLYzke4WHzEQ8JVcoxjj5+lalkQpn
 aCWPz4bsH8TXuhOWz3f01NmMwR2EC3vf0k00i3P5jsnMSu0mfKhy/c1iasjtGlt56Quk
 1lhU2Nxq4j3voTdkFKmL0LXrOEH43AbG7iySZQjZaXkGE7PoJEO0GFRw5WBcpQtZQPO+
 REW0QZP3DcKlC3IHovaSu9XsXHDi7FrExHIUsv1OLTqLJ++5JHZ6yLJOos60lQ+aR9Ch
 jJGQc5VbWQbLJD5o4INesL36zLrkiAw0lx2KkUbSt17v385476gGhPT6fWq9FNI4Qd7p
 /6CA==
X-Gm-Message-State: AGi0PubQ1jS0mpZvqTAEdtFVLlQOcKJQG3+QBV0y1IHZgC7jKZ/L8G7u
 teVYPgOVe2/9o4X+y8Vs5qpXog==
X-Google-Smtp-Source: APiQypIbr/vUdHuVOSfoh3sDe1PUR+cXSVSIzp4Pfb3b+8NcqeoqwqX/h8P2ELoz9LJQrkt1RHRKGQ==
X-Received: by 2002:a17:902:b682:: with SMTP id c2mr354882pls.36.1585592196301; 
 Mon, 30 Mar 2020 11:16:36 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b95e:3742:c972:389e])
 by smtp.gmail.com with ESMTPSA id p7sm207452pjp.1.2020.03.30.11.16.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 11:16:35 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Anatolij Gustschin <agust@denx.de>
Subject: [PATCH v2 3/4] rockchip: Enable pre console for rk3399
Date: Mon, 30 Mar 2020 23:46:12 +0530
Message-Id: <20200330181613.29462-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200330181613.29462-1-jagan@amarulasolutions.com>
References: <20200330181613.29462-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_111637_233994_B32E8DBD 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable pre console buffer for rk3399 platform.

This would help to capture the console messages prior to
the console being initialised. Enabling this would help
to capture all the console messages on video output source
like HDMI. So we can find the full console messages of
U-Boot proper on HDMI display when enabled it for RK3399
platform boards.

Buffer address used for pre console is 0x0f200000 which is
ram base plus 240MiB. right now the Allwinner SoC is using
similar computation.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 arch/arm/mach-rockchip/Kconfig | 1 +
 common/Kconfig                 | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index ed7514ab75..0cb1f23d0f 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -229,6 +229,7 @@ config ROCKCHIP_RK3399
 	select DM_PMIC
 	select DM_REGULATOR_FIXED
 	select BOARD_LATE_INIT
+	imply PRE_CONSOLE_BUFFER
 	imply ROCKCHIP_COMMON_BOARD
 	imply ROCKCHIP_SDRAM_COMMON
 	imply SPL_ROCKCHIP_COMMON_BOARD
diff --git a/common/Kconfig b/common/Kconfig
index 46e4193fc8..bd35de3056 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -568,6 +568,7 @@ config PRE_CON_BUF_ADDR
 	default 0x2f000000 if ARCH_SUNXI && MACH_SUN9I
 	default 0x4f000000 if ARCH_SUNXI && !MACH_SUN9I
 	default 0x0f000000 if ROCKCHIP_RK3288
+	default 0x0f200000 if ROCKCHIP_RK3399
 	help
 	  This sets the start address of the pre-console buffer. This must
 	  be in available memory and is accessed before relocation and
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
