Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C661EB061
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jun 2020 22:42:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GZYYprpv3jnMvC5+ELTO/1QOBMj2k2hjNHRRUMPLLnw=; b=CJFBSkvujG/yQH
	FqCw/HURjzH1+DaUJrWL0yoawywiQGMfsGr5I/ZzfIxzWS9ykL6r8OI8KHSXttpFsqkQNa2K4DSWC
	I1mv1MxfUHJr5WfbRHqNhsoeb26jMdhWXLcp3qixR3/fJO7zRB3/mJzlmnxiBK5cALwB5108NHAKl
	2W4BMww89XDdK1YL9xVvpoExer3DuEAnkfYBEdwsA/4c3toPyDm4pysXKcfT9BWV5G/+jgpenwHz/
	482Rj7fOZ0vGpW/jU+ZNaaOwSR7NztY7HuuzbVC1P6trh7X3cCvwhd2REWnET/P/IZo1KGuDQlPMM
	DfX8u+b3yKJP+Lu6bVHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfrGY-0002MM-11; Mon, 01 Jun 2020 20:42:38 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfrGS-0002LR-IT
 for linux-rockchip@lists.infradead.org; Mon, 01 Jun 2020 20:42:35 +0000
Received: by mail-pj1-x1044.google.com with SMTP id nm22so323093pjb.4
 for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2020 13:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C6fbGMCB5hmvn3dcBB4ewd17yp4h6go4QFI7dlPchhs=;
 b=J0UKz80QMqRMSdDifNxqxFLh/jL9Ot8U+323UT9xDdIeFN1YUe73If+dRoxqA/YLhp
 OwMnyyzHjx2UfovdZ4DDd2FKeg7FcDTCsEBSSJ8oq1oZLXM2Fz3G+eGeAdphMVvKURsy
 URALfeMveEdFUdCOuBm+D8CLWb1Ckb4PfAaks=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C6fbGMCB5hmvn3dcBB4ewd17yp4h6go4QFI7dlPchhs=;
 b=mj0+g02xbvtp1Ad8+DZS4GujgAc+u9H/AqsVcHGcrfJ5iYCMe94oB5tuXlVauSBXS3
 rOBF90GQ4oOA1bepkrpFwHiYtnFB4UraAlzZ+ke3FrD4skx7Czj+SX8gMpQ00YBtGotA
 bGuien53ACRuQAMSqkprIcNpfc9v5lyuOJNFvOGdx2KKo+UrJGJE64NDm3PhA9/ov79T
 tQcpQEDbisXBH1TEhVlBK4ULYnoEXjKTYixbVbgUOIrI2Vff+hlLpywaU27b1rHuVfgQ
 EIBwP4E9qwVOe8fFTuVRQ8ylpTvFZqbL4D4wL+J517DbLx1l6877Z05ndcMBfFN6MQXg
 WPdA==
X-Gm-Message-State: AOAM532g0YPpi8xIyoG9crQoWyBWtADX0DyfEX9HcoDXdEYKhn99E7Al
 p835nHGlBmgqPRVm9bpWnVP6IA==
X-Google-Smtp-Source: ABdhPJwxSwic44Fq51bepjifWvqD5kc5YxY8fDtQ3Ox0kfDyjN/C1y0NfX2FOfbIUGZFlMuWkesf/g==
X-Received: by 2002:a17:902:bc86:: with SMTP id
 bb6mr21356684plb.243.1591044151113; 
 Mon, 01 Jun 2020 13:42:31 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:658b:ecbc:7ea4:1996])
 by smtp.gmail.com with ESMTPSA id k7sm283581pga.87.2020.06.01.13.42.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 13:42:30 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>
Subject: [PATCH v2 0/4] rockchip: rk3399: Add SPI boot
Date: Tue,  2 Jun 2020 02:12:09 +0530
Message-Id: <20200601204213.466120-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_134232_742874_2AE1C48D 
X-CRM114-Status: UNSURE (   5.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

I have marked this series as v2, since the previous 
one has SPL SPI boot via different defconfig.

Thanks to Hugh Cole-Baker for inputs about SPI boot
image creation.

Changes for v2:
- same defconfig to support both MMC, SPI boot
- add spi flash program document 

Any inputs?
Jagan.

Jagan Teki (4):
  Makefile: Drop to handle rkspi image type
  roc-rk3399-pc: Mark default env from SPI
  roc-rk3399-pc: Add SPI boot
  doc: rockchip: Document SPI flash program steps

 Makefile                                  | 11 ++--------
 arch/arm/dts/rk3399-roc-pc-u-boot.dtsi    | 12 ++++++++++-
 configs/roc-pc-mezzanine-rk3399_defconfig |  3 +++
 configs/roc-pc-rk3399_defconfig           |  6 +++++-
 doc/board/rockchip/rockchip.rst           | 26 ++++++++++++++++++++++-
 include/configs/roc-pc-rk3399.h           |  4 ----
 6 files changed, 46 insertions(+), 16 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
