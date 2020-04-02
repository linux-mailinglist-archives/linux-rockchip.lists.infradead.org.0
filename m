Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E743719C04F
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 13:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+WIvYbisDR8JQn6bI1XerblaW4dbxIzHaj5FGa7nKms=; b=lKN
	iMmB/wopw2u9TdCV2zPkc1K7Mla5WLq6UzpRjNbWs+HhgYw15XbNVIA1HYZbuo2DUNsfBKUSdXvD2
	TqjC6ywu1UObmjG6vnBPbOnEsEJpU4xHzhqFbR0RQC0Xyu6ZONxDVbNBM23IFE5U1iGUDvCENBrFr
	TmE0aXbg8Z38pkMdMY6hAD8co4/nQTpBAunak8t1M/aYTNuSGZoDN2+nt+BT/XnxO0nxu5Zr+YTHz
	EZzntdQQeOz7UvKBhmBmQN049KhJRMorGagashX/bM3ZAM/AgmxF+37q86MdLiOmXJ49be4Ctc8Ey
	K0nc4gnQ9ZcqMk4EqR8yshZTjYqfArQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJyEB-00022k-09; Thu, 02 Apr 2020 11:41:43 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJyE7-000228-H3
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 11:41:41 +0000
Received: by mail-pf1-x443.google.com with SMTP id f206so1621229pfa.10
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 04:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=2ENfbLtQlJ1RmgZwwBaezgCh5zALam8o7iCVSptAu7Y=;
 b=HgV+r7Ma4+vXLRozwsSdGrlNqemjuENxLtxNJhXwx8aQBLXxLxKIlAGzlpM7j8iynP
 7E0fxfrHsXaxxV1xDZCNk69CeSJxr3r9UjGuFBwvqW2HMN8FJ6D57fF3N8XxYoW2Xvds
 mJ7TDys/8yIAk7T2jqEZc9a0aYicg3aTT9jgY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2ENfbLtQlJ1RmgZwwBaezgCh5zALam8o7iCVSptAu7Y=;
 b=Mx56RQm4E3a4pbGmuthPFXXgRnc9omGngkIqEmQAMhYAdLspVR+RlruLxs7PrfPiqT
 YjAYjqfA0s4SdJCligBNVSCaM76wOXIippclsALaBosrOTxUqD4yTK9+UzNSFhlDmJxM
 sa3WxkAMWYmkxDOo+J2G7ZJPYP1gDhPOj216RwliZOq6EpXetmWpRyReQBVTcmVmNWEC
 YLWYsDppRP/SVLUpzGVuSBPd4mk4J3tFFcTCOIHm/0RDK8AxZ+aTngP+GaHcU0WBN8EK
 33XnqfyxFT2+bAN+fvF4EYXKO050IWz9tim4s1dHTXgk5SJVJeiuug6qS94U4Dp/axx9
 qz+w==
X-Gm-Message-State: AGi0PuY+BO1B0R+xU/aZ76mCmQl+eGUvdb+EB7Gy6xf6ve25R3OCbvR3
 vw6k/wq0g2TC+oLpm5MGhuOsuQ==
X-Google-Smtp-Source: APiQypKIVyeTMxLN5XWh/S0X+8jDScjZJ10UerMIRzk0f+XNL24v2zAsbGG5RSlugWJkqgIerWtIGg==
X-Received: by 2002:a62:170f:: with SMTP id 15mr2698071pfx.12.1585827697499;
 Thu, 02 Apr 2020 04:41:37 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:3532:519d:ba6d:25e1])
 by smtp.gmail.com with ESMTPSA id i4sm3618107pjg.4.2020.04.02.04.41.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 04:41:36 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Anatolij Gustschin <agust@denx.de>
Subject: [PATCH v3 0/5] rockchip: rk3399: Fix HDMI out 
Date: Thu,  2 Apr 2020 17:11:20 +0530
Message-Id: <20200402114125.2501-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_044139_993559_E602A7C9 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, Mark Kettenis <mark.kettenis@xs4all.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Due to recent Linux dts(i) sync for rk3399. the existing
vop driver is not working with HDMI out on RK3399.

This is v3 patchset, for previous version fixes[1]. 

Changes for v3:
- handle vopl clks in clk driver
- drop dts changes
- fix 4K display out for rk3399
Changes for v2:
- use usbkbd as stdin
- enable USB Keyboard

[1] https://patchwork.ozlabs.org/cover/1264187/

Any inputs?
Jagan.

Jagan Teki (5):
  clk: rk3399: Set empty for vopl assigned-clocks
  video: rockchip: Fix vop modes for rk3399
  rockchip: Enable pre console for rk3399
  rockchip: Enable HDMI output on rk3399 board w/ HDMI
  video: rockchip: Support 4K resolution for rk3399, HDMI

 arch/arm/include/asm/arch-rockchip/vop_rk3288.h | 11 +++++++++++
 arch/arm/mach-rockchip/Kconfig                  |  1 +
 common/Kconfig                                  |  1 +
 configs/nanopc-t4-rk3399_defconfig              |  7 +++++++
 configs/nanopi-m4-rk3399_defconfig              |  7 +++++++
 configs/nanopi-neo4-rk3399_defconfig            |  7 +++++++
 configs/roc-pc-rk3399_defconfig                 |  6 ++++++
 configs/rock960-rk3399_defconfig                |  7 +++++++
 drivers/clk/rockchip/clk_rk3399.c               |  7 +++++++
 drivers/video/rockchip/Kconfig                  |  2 ++
 drivers/video/rockchip/rk3399_vop.c             |  2 --
 drivers/video/rockchip/rk_vop.c                 |  4 ++++
 include/configs/evb_rk3399.h                    |  5 +++++
 include/configs/rock960_rk3399.h                |  5 +++++
 14 files changed, 70 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
