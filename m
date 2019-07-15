Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF73D69AAF
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:21:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cYSNVUEUCV5R7gye6vfYJnbzbib/pYK2spjZR55xMx4=; b=rJnyQtNZ55pNSb
	L0g44pgSbFN9xgo0fiGwiBXdJsTfBqYqgqV7d62ed2QZ2gHa+Z1wyk1fobnTdm7H3pgLSK/EsuiyU
	55VK9Sq/GLSpaC1ENdu8vrfjTQw5/PVYGSo2CHHvy4h8WmQ9ooy7Gn5tHdCPk05Rt8IidoOUHAN6B
	25o0Cge9ExMgkeh9ke3/Nz4xiMXPganM4Vcxkx3FSD1qVLSQ/4XCbsQ4n/7UUX9fhw7GPXdmcLqS+
	rMrihNiYi4KvxkPyWHfs0QoKCA01IMX/490uCu9o53cXj+5batM3ZANI4tQElzwmVVHShRn5z4uz3
	a9oXx+Bp6t7qTXl8az/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5bP-0006jU-Oj; Mon, 15 Jul 2019 18:21:31 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5bK-0006i0-5r
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:21:28 +0000
Received: by mail-pg1-x541.google.com with SMTP id u17so8107827pgi.6
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XbA/Cew+V0e6pXMaLr93cLvoc2s/7gG4Qk7jhXsKtgI=;
 b=K3+pfdkhmZaBV/rOdnidYJMMzLGvcysYhnoWQNCubddJ5ctnieMHP7NsgSliQUtMuA
 In9DXRUClvWaYD+K0WqKWQLspnr+2LjfLAPDP7tT9gOJoA/F7UQCOKuRx/nINmhnRp8v
 QIfqtpIDQzDNpU/jPAUEsV28ooIO/whR2YjpY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XbA/Cew+V0e6pXMaLr93cLvoc2s/7gG4Qk7jhXsKtgI=;
 b=OHQuTsmmGbCXJ8IuSMEYeMs9KN/iwT7ZckDBZn7NI2clTPJNO9J0BvDtI/lsnMSbR/
 TbaF9n9I2BP8uVNX8jyAYx46JOCAIX+SHgpqBn9k1NkAXbj6WQTkaWo9wsEb71uS4DnN
 jcYSJUTUkCiE3EX56jcynX7p2HuLjnz6w8m0K9hHrbw/OfBm3QJHxHQDDfbOL8o5/7IQ
 w98FdMdkslYnoUs4OWjGlY31az6vayrmYq5s5j5Ilgx2LeqDZwgWOzFPs9ZLyQ1QSRyN
 FXf42etzYhFFSmOTInN+a80wJtadByNo4mBHiAiPFYniWHAQMQ+lutQ+r5J7AKJYcPv1
 UxLg==
X-Gm-Message-State: APjAAAUUK5K1Wl2FcmYytFmRK6+hK9Tbd2QOwsF7aLunumr+YWPCFyAz
 1WFaO0gMKlDrklU/twt68SOLz+gzYgWLRA==
X-Google-Smtp-Source: APXvYqzfQapRMBMkW9ZAJVlNKv/N+/eKGIi3eCAnwKj42LRh1VPp4Iy94eH//0A4pM34DHFih1N0wA==
X-Received: by 2002:a17:90a:601:: with SMTP id
 j1mr30186370pjj.96.1563214881094; 
 Mon, 15 Jul 2019 11:21:21 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id l15sm18152405pgf.5.2019.07.15.11.21.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:21:20 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 00/15] ram: rk3399: Code cleanup
Date: Mon, 15 Jul 2019 23:50:55 +0530
Message-Id: <20190715182110.21336-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112126_863039_79577C55 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is v3, version of code cleanup changes from previous
lpddr4 changes[1].

Changes for v3:
- squash all code fixes in one patch
- order them in proper way

[1] https://patchwork.ozlabs.org/cover/1116734/

Any inputs?
Jagan.

Jagan Teki (15):
  ram: rk3399: Fix code warnings
  ram: rk3399: Some trivial code fixes
  ram: rk3399: s/sdram_params/params
  ram: rk3399: Handle pctl_cfg return type
  ram: rk3399: s/tsel_wr_select_n/tsel_wr_select_dq_n
  ram: rk3399: s/tsel_wr_select_p/tsel_wr_select_dq_p
  ram: rk3399: s/ca_tsel_wr_select_n/tsel_wr_select_ca_n
  ram: rk3399: s/ca_tsel_wr_select_p/tsel_wr_select_ca_p
  ram: rk3399: Order tsel variables
  ram: rockchip: rk3399: Add cap_info structure
  ram: rk3399: s/rk3399_base_params/sdram_base_params
  ram: rk3399: Move common sdram structures in common header
  arm: include: rockchip: Move dramtypes to common header
  arm: include: rockchip: Add DDR4 enum
  clk: rockchip: rk3399: Fix check patch warnings and checks

 arch/arm/include/asm/arch-rockchip/sdram.h    |   6 -
 .../include/asm/arch-rockchip/sdram_common.h  |  38 ++
 .../include/asm/arch-rockchip/sdram_rk322x.h  |   7 -
 .../include/asm/arch-rockchip/sdram_rk3399.h  |  36 +-
 drivers/clk/rockchip/clk_rk3399.c             |  68 ++--
 drivers/ram/rockchip/sdram_rk3399.c           | 348 ++++++++++--------
 6 files changed, 264 insertions(+), 239 deletions(-)

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
