Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2FE19832E
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 20:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uwaQc03bcgtMKfhilJIM9rYGDVDhcW8BMb3Bjcktvog=; b=hCa
	LiuV5byCdW7XzTaFjiLTHjYyxMA6KgCSSBsfs14CIXKfeaOnI+SYjhAlz3rkffpCzZbh9NkpZEhrC
	yzoaslOddHvnhpa8I9Ay3tfKEckPFCK4GdEDhgxTJEHmX8C8inr4gulBaj0TfEpYbv9iRDRbZC3+x
	3h/KlDRA8lCQGQ+sZ9M97KQf+tzuFPyrlPAeUDRAwlSvhjAQFaBPPjbCRqUy9KoiuT0bdOaQxkuWs
	JWDzN9syjLDLv2Tcm1QuHRiSKozk0lSMF/6g+yaH0M8vK4Z0gOAxaRHfubDqUC5W710RgZhaUMvX0
	8vOsUBGffrQsmSLsebTgyzwB8UQPetg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIyxc-0001uu-8J; Mon, 30 Mar 2020 18:16:32 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIyxV-0001og-P0
 for linux-rockchip@lists.infradead.org; Mon, 30 Mar 2020 18:16:27 +0000
Received: by mail-pf1-x443.google.com with SMTP id c21so8337338pfo.5
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Mar 2020 11:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=YhduvIBf3VnyoXUPi+WBrJLhPSXYAiQ52drW8+ZyPHA=;
 b=E71UARAmNp6ItBzWebW/A8QdTBxCEljQp2oPX6VSNAYulFqv8GuA30y20KkGEJUD7z
 299e4yo7XCXP7eHbj2JMccEmOITNp1e+6b2Ei9Am1Aal5AsEDf29K19lwLeQ8sfaZ2UV
 Ob7NqyjPTbgW6qlgi/+K3e1ZdTcehVVhWv0eg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YhduvIBf3VnyoXUPi+WBrJLhPSXYAiQ52drW8+ZyPHA=;
 b=WziJQQYVD1i0odjSs2Qu3aPfXfJISxgvxs9PoFZqfrwAWFT3mKSuyfXlEIQTlULpmx
 yiqzDIYpfIsYL78bcdevmv3WG9t8KWwG9BeGbTY+pRg4rfIfQ4n9Ls0ofWjNLYQmDb+3
 Nufq+0kGWdqL3d+sP3RQjfbj0Mn1vTiW2jYlyPKVWmIArl/n1ppYP4fBihmKxXceFzdK
 s0XkxZmapQswaz/wWnohNAuDkbdUp+T0VhI0cixJgisvKixp/9NdUEk9N5CUBcgmcMCU
 1TgMMqnJkkUOH0PFpBAqXjDlvr1tXwcsRbLso1Yp5ITPloCGPHvUdVnBza8M4HeoApyJ
 8Lng==
X-Gm-Message-State: ANhLgQ3cFCVNKAv6tiKTLc5xRGJNiNzHv+wu7sT2JZqE7SUAVWp+eGQ4
 A/Mf2QFvGxE2iWo31KVOcQxk2w==
X-Google-Smtp-Source: ADFU+vt6AdfXzbR/KnmV8yH7J4HT+Nb8ghZrIztT9YUtZIFnvLCJVsoOzta6UAAQ4O/tQWvUGj916g==
X-Received: by 2002:a62:3487:: with SMTP id
 b129mr14115898pfa.150.1585592184325; 
 Mon, 30 Mar 2020 11:16:24 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b95e:3742:c972:389e])
 by smtp.gmail.com with ESMTPSA id p7sm207452pjp.1.2020.03.30.11.16.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 11:16:23 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Anatolij Gustschin <agust@denx.de>
Subject: [PATCH v2 0/4] rockchip: rk3399: Fix HDMI out 
Date: Mon, 30 Mar 2020 23:46:09 +0530
Message-Id: <20200330181613.29462-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_111626_259315_2D9ABC0D 
X-CRM114-Status: UNSURE (   7.95  )
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

Due to recent Linux dts(i) sync for rk3399. the existing
vop driver is not working with HDMI out on RK3399.

This is v2 patchset, for previous version fixes[1].  

[1] https://patchwork.ozlabs.org/cover/1228297/

Changes for v2:
- use usbkbd as stdin
- enable USB Keyboard

Any inputs?
Jagan.

Jagan Teki (4):
  arm64: dts: rk3399-u-boot: Delete vop assigned-clocks/rates
  video: rockchip: Fix vop modes for rk3399
  rockchip: Enable pre console for rk3399
  rockchip: Enable HDMI output on rk3399 board w/ HDMI

 arch/arm/dts/rk3399-u-boot.dtsi                 |  4 ++++
 arch/arm/include/asm/arch-rockchip/vop_rk3288.h | 11 +++++++++++
 arch/arm/mach-rockchip/Kconfig                  |  1 +
 common/Kconfig                                  |  1 +
 configs/nanopc-t4-rk3399_defconfig              |  7 +++++++
 configs/nanopi-m4-rk3399_defconfig              |  7 +++++++
 configs/nanopi-neo4-rk3399_defconfig            |  7 +++++++
 configs/roc-pc-rk3399_defconfig                 |  6 ++++++
 drivers/video/rockchip/rk3399_vop.c             |  2 --
 drivers/video/rockchip/rk_vop.c                 |  4 ++++
 include/configs/evb_rk3399.h                    |  5 +++++
 11 files changed, 53 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
