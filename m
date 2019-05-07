Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9790416AB8
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4mu6FXbHx8DQkknweRdMjY5oBTQWqAmk3w+LEH1r40=; b=C+jmX49UUgGAE7
	kir1RBxH7YNiFDyLPLJoSOpfut0GtPv8N567Iu0HStHZkoC2+hOKCEhtXt2xkPwJhMuP1N61GTsfs
	TrN61yHJ5moiu9iiXl+wG6FB6lJelR67SOLjKxLt3yPAiNOUn3+KjvbrZTLctVlrcmhpiuWiC+DD1
	KR6j7yeHIsZj0APusPjcJ6LA76SYpUTSxSMu68OWczrIan1tldCsdrJ95xpKwmssx9T2DsnaliWNd
	B9c+5C+ieCHot4DB9BAXtOD8er6z+ZsHCwNjWBBn1+2FaYMVqJmFwLuBSu7gNuIq0Zi3Xn+kII2jL
	1rEAnF5pJ5DP9KUJRT3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5DY-00061m-IF; Tue, 07 May 2019 18:53:32 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5DV-0005zN-9A
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:53:30 +0000
Received: by mail-pf1-x444.google.com with SMTP id u17so9116264pfn.7
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3YaCBa1O0k1RP1Yy3LgAZQbXlYI99ssAvRO6LMhpi34=;
 b=VIvPc4nPgDIbCflRwq0dXgk+VcAlE5iHw2hgSOXYdVH08Goq3RvIjaGb0mn9UQnTxc
 Y2vMNDXdBOlDGhIVTDzPj50My9O1kP/xZxX6u/KhVyc4wcMCYcq4Ld1e+IiTFX6GoO3f
 9jHMN0o3m4+EfRQjsOffou8kYiSlGwb8LiwKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3YaCBa1O0k1RP1Yy3LgAZQbXlYI99ssAvRO6LMhpi34=;
 b=sFop0HgzCGzlsrfUQiwhu4tMQTJ7a1efCXky13lWIZUoXYZ0ZpTMWllT1ZNdmyuy4F
 dXHI0G5ytJe1WB3g7wmHEDqMBmW7sJYZZW2gynqfLgBQ89yt5O8D+e0pOqDCkNg7GB3O
 IEkKZlJCwZgxzyq8Jz5oVA90TANEDCErxJ27yQlbqsOsr6CydGYg6LiqPbGqq2AdLfW+
 jz4AFm6mMF6wPmEGEbtAQ1SKGDFDs4TeIbeclun5+lOSXDExaaekJQ3cbUU8oFzAIjam
 3nQhoHNMnu384altwN476YJu83QiYdvoVeqYPMgf6/SN7RLtrE6KfUQYGN/F6qi8Gh8x
 O4Ng==
X-Gm-Message-State: APjAAAWcnedVMBWx+M+TBvd1XhDHi6Zo0Qb8IsRBjNj9DOIkPBhMXgWZ
 w1Eo/PtOLjEw2BbyYPD58Jaw4A==
X-Google-Smtp-Source: APXvYqzFtKys+dCDEFUuRKZICc0tXlWHUIxjUajjXyoxDxCmY53Zuo+xUMFf/f+/wyHUbQ5WfQp9FA==
X-Received: by 2002:a62:2687:: with SMTP id
 m129mr44306913pfm.204.1557255208558; 
 Tue, 07 May 2019 11:53:28 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id l83sm14668086pfi.150.2019.05.07.11.53.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:53:28 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH v3 6/6] Kconfig: Add u-boot.itb BUILD_TARGET for Rockchip
Date: Wed,  8 May 2019 00:22:15 +0530
Message-Id: <20190507185215.15441-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507185215.15441-1-jagan@amarulasolutions.com>
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_115329_481158_216AF075 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add u-boot.itb BUILD_TARGET for Rockchip platform when SPL_LOAD_FIT
is being used.

This can get rid of building itb explicitly with 'make u-boot.itb'
so, from now all required images will build just by make.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Kconfig             | 2 +-
 doc/README.rockchip | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/Kconfig b/Kconfig
index 91c1082ace..6bcff29659 100644
--- a/Kconfig
+++ b/Kconfig
@@ -240,7 +240,7 @@ config BUILD_TARGET
 	default "u-boot-with-spl.sfp" if TARGET_SOCFPGA_GEN5
 	default "u-boot-spl.kwb" if ARCH_MVEBU && SPL
 	default "u-boot-elf.srec" if RCAR_GEN3
-	default "u-boot.itb" if SPL_LOAD_FIT && ARCH_SUNXI
+	default "u-boot.itb" if SPL_LOAD_FIT && (ROCKCHIP_RK3399 || ARCH_SUNXI)
 	default "u-boot.kwb" if KIRKWOOD
 	default "u-boot-with-spl.bin" if ARCH_AT91 && SPL_NAND_SUPPORT
 	help
diff --git a/doc/README.rockchip b/doc/README.rockchip
index 88a4593392..c4e5f83da7 100644
--- a/doc/README.rockchip
+++ b/doc/README.rockchip
@@ -103,7 +103,6 @@ For example:
      => cd /path/to/u-boot
      => make nanopi-neo4-rk3399_defconfig
      => make
-     => make u-boot.itb
 
    - Get the rkbin
 
@@ -170,7 +169,6 @@ For example:
      => cd /path/to/u-boot
      => make orangepi-rk3399_defconfig
      => make
-     => make u-boot.itb
 
      (Get spl/u-boot-spl-dtb.bin, u-boot.itb images and some boards would get
       spl/u-boot-spl.bin since it doesn't enable CONFIG_SPL_OF_CONTROL)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
