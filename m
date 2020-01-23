Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B545A146AE7
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 15:12:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0misMhLbzQlbApqE3w80WcJbccwehNrhvniIHUVgz5Q=; b=fY+GneAbJkjajv
	bvzBl1ZWsAp3x79OjeZRfCsiyfdgkEPZwcDbmGcmNz48NpoyuUw1efRbJcu6Mmj7S9RxwK/TSUuBK
	hF5Fx3moD848TEn0VpaFte7/CFyu+clZTqiuHho0ADrPMXI+qb//Qvi84IwOMidAUEQoZn27sHQU9
	apdF9MZ9Oa+YgDVIuS11viNRAAK0WyVOkdMN2hxd9H7rkthhca97Y0SQM4beS5ZKofMSfRdU52GGH
	/lo8tXIgg5pep5PLNeCwF5pPgkcqPhL7FQJCGH53DhgkvFP7n4/7+qN88/715LsuirEke4LsQkgTQ
	drK+FkE1b/UAC6QIvUug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudDv-0001tk-Fs; Thu, 23 Jan 2020 14:12:43 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudDr-0001sz-7I
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 14:12:40 +0000
Received: by mail-pf1-x442.google.com with SMTP id n9so1586100pff.13
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 06:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rDeb4IRpDr+jmE5DvZP+Erb2FHBE6aPgX/dlR6Q3DjE=;
 b=a79gqNawR9gPO+4e09eOr2TeLaKbKUDxYqseIi1tKgA282xbDu4FmfWG/LV5ejf7DY
 0wzL8hEeq5n2Qi5xV2VNysopouA+Pmn/S35Qz7kiyVY5Ua4hhTueEZ0xZLoKZMQ0A6m1
 2gpWNKHTElRaoZllcqQ+IoYs6X7OpmqQdDaKM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rDeb4IRpDr+jmE5DvZP+Erb2FHBE6aPgX/dlR6Q3DjE=;
 b=C3j6y7DqlLskb8v0wPPJIjZdCRn81KVYTWRaw2tx9xY6kfzwG4vI8salLVfS3t4qmo
 nizLbNLAot9kr9px7yFvWe+Lxe3ZaSHxucPM5UwwGwt7P4WeQmHo/QfzZAa4FEqU3qhL
 FpUzWFpyZ+g7D3SDhtOVnMFV+w0E40kJm5/cdu3+zpJhRPu/htBtxzDX6otTAxQWImZY
 Dnp8ihIKeiNSlfj39Sx21I8KL9U1HHnz7rlr31plgC8lYJFzqv10ICsd6gy2nNedysju
 6P8DBexuCiVtdSF/RXXYY0GEENY6kqggRWHgaqshXqJ8cUXI9FDFvMQoe+UEZJsXInw4
 7b+A==
X-Gm-Message-State: APjAAAXVBYzR/ytNjuHyms4RCbblfQwy/6g9t3XMjnxKhq3mOWwkOsqf
 v4G+KOEYVDx2vFJjlEURfDGrEQmNTQo=
X-Google-Smtp-Source: APXvYqz2lRQwTrXQBNySlPyz+9dhRIKaPzPpU1xHaE/kL4xAoZ1J1mN4Y+eQKnfuXkvNPikVPHMT1w==
X-Received: by 2002:a63:4b50:: with SMTP id k16mr4265766pgl.386.1579788758239; 
 Thu, 23 Jan 2020 06:12:38 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.109])
 by smtp.gmail.com with ESMTPSA id o6sm3136392pgg.37.2020.01.23.06.12.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 06:12:37 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 1/4] rockchip: rk3288: Enable pre console buffer
Date: Thu, 23 Jan 2020 19:42:19 +0530
Message-Id: <20200123141222.486-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_061239_696167_F16334D2 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable pre console buffer for rk3288 platform.

This would help to capture the console messages prior to
the console being initialised. Enabling this would help
to capture all the console messages on video output source
like HDMI. So we can find the full console messages of
U-Boot proper on HDMI display when enabled it for RK3288
platform boards.

Buffer address used for pre console is 0x0f000000 which is
ram base plus 240MiB. right now the Allwinner SoC is using
similar computation.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/Kconfig | 1 +
 common/Kconfig                 | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 2f260a5c5f..ed7514ab75 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -102,6 +102,7 @@ config ROCKCHIP_RK3288
 	select SUPPORT_SPL
 	select SPL
 	select SUPPORT_TPL
+	imply PRE_CONSOLE_BUFFER
 	imply ROCKCHIP_COMMON_BOARD
 	imply SPL_ROCKCHIP_COMMON_BOARD
 	imply TPL_CLK
diff --git a/common/Kconfig b/common/Kconfig
index a7c5ba278a..21d0244050 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -567,6 +567,7 @@ config PRE_CON_BUF_ADDR
 	depends on PRE_CONSOLE_BUFFER
 	default 0x2f000000 if ARCH_SUNXI && MACH_SUN9I
 	default 0x4f000000 if ARCH_SUNXI && !MACH_SUN9I
+	default 0x0f000000 if ROCKCHIP_RK3288
 	help
 	  This sets the start address of the pre-console buffer. This must
 	  be in available memory and is accessed before relocation and
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
