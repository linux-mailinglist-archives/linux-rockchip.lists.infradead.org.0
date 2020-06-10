Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 372D51F5270
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 12:37:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H8UGjaMFqIGy48MTvAGP7Rg30qBu1pYw43BwGtz/Wlo=; b=EfMuPwAk64fw7y
	ZGpxIn6b7YHDpMCv99hCwRRuhSSkQwXtmxvFMTNsvJzMHQwU6LE298TjUyRkrafdY9NXmVSafx1mU
	iAvRqr+yVyzsULQ81gGGvFM718uCsPfevL2vMWB47/zWiv2VIuxkoDJsNA19aRm5bxW+tR2hy+VIX
	Iv5fsGpyS166N3ynEoE5DHfp8jk9IHuFpjwzpN+AIHFqkDMdhhKtNjQ1dMIYWWsO1SD9b5hsYhHsA
	iy1jM+RcMp8OVYAYZy2RFkl3Ep0zXtUpeYxurwoFOYZbbyaA8BBkMC4lS0HXXWAmhytdyYxzGbWjO
	qOYEJT02obBIVomvxGTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiy6g-0004na-RL; Wed, 10 Jun 2020 10:37:18 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiy6d-0004nA-Ds
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 10:37:16 +0000
Received: by mail-pl1-x641.google.com with SMTP id y18so812543plr.4
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 03:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qnwkhI716WfmNfwJVXTcpiD+P44gEOpYrkw237O7Q+c=;
 b=iToMUav1Mq4DH+00s58owIstpvxImwvo90y7urn6iQ2JOUMsevnWleIhrIc4kQcftc
 w/s5Yma/UM1jNpG+M/jBVgTazrfTsR623f5HosW694lZNCoZcdmISfbbeq4gYPV7sTSI
 wf9Rg8R+3oQAygiS8O/wyAPZJnlF1QWm3A5tY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qnwkhI716WfmNfwJVXTcpiD+P44gEOpYrkw237O7Q+c=;
 b=Vpj5cSqj5lPNUjL7gVj0kz9ZLSFwnp+e1LFu/CiehVVyyX4OBQNxgDLz6oyPa5wPOi
 RyC18PoWmriJHfT18bqO9neRvnyl9VFC6AZ5FBTHLfk+GSZWzcrTDPBwQdt14eTyB0dS
 MOhJgLA3PbwwS2GiERez92hoGsNPyB4FeZYTL0IJ+tVT4s/Phzl8fuFI6rUpbCzb1bg9
 PRuL/ElQJ340XHjiLii6mCzc9ZBt0JFbH4YiIHisFOoefXVBKylzUYPJcbmh+iNn2Pvc
 zdkl9tMpDopeyE3BquBpLzR1S1SOPA2fqibQTlFtr/CVN7VX8nQJfpZJ+jKBTNHjr/9M
 I1zg==
X-Gm-Message-State: AOAM532Ca+lEQwOIOa/L00GKwH8yDhhT2XoOSfC7QdXAlloFhQ1iCckb
 QFc47EWv8PAEHLOleZLQMMMH5g==
X-Google-Smtp-Source: ABdhPJw2s9DGyIl312QAXUDrzCOjpxZjo01X8rgDKMToXG3ts0yGQlc+lw5kB9E9Q1u3+G8n2nZaOQ==
X-Received: by 2002:a17:902:b78a:: with SMTP id
 e10mr2426813pls.201.1591785434337; 
 Wed, 10 Jun 2020 03:37:14 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9daa:1b72:7bd0:50df])
 by smtp.gmail.com with ESMTPSA id x191sm12454754pfd.37.2020.06.10.03.37.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 03:37:12 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH 0/4] rockchip: rk3399pro: Add Add Rock Pi N10 support
Date: Wed, 10 Jun 2020 16:06:54 +0530
Message-Id: <20200610103658.96678-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_033715_604654_495C64BC 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: linux-rockchip@lists.infradead.org, Tom Cubie <tom@radxa.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Dalang carrier board from Radxa.

All the required dts(i) files are synced from linux-next
v5.7-rc1 since the current sync available for rk3399 is 
the same.

Any inputs?
Jagan.

Jagan Teki (4):
  arm64: dts: rockchip: Sync v5.7-rc1 rk3399pro.dtsi
  arm64: dts: rockchip: Sync v5.7-rc1 VMARC RK3399Pro SOM
  ARM: dts: rockchip: Sync v5.7-rc1 Radxa Dalang Carrier
  arm64: dts: rockchip: Add Radxa Rock Pi N10 initial support

 arch/arm/dts/Makefile                         |   3 +-
 .../arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi |   7 +
 arch/arm/dts/rk3399pro-rock-pi-n10.dts        |  18 +
 arch/arm/dts/rk3399pro-u-boot.dtsi            |   6 +
 arch/arm/dts/rk3399pro-vmarc-som.dtsi         | 333 ++++++++++++++++++
 arch/arm/dts/rk3399pro.dtsi                   |  22 ++
 .../dts/rockchip-radxa-dalang-carrier.dtsi    |  81 +++++
 board/rockchip/evb_rk3399/MAINTAINERS         |   6 +
 configs/rock-pi-n10-rk3399pro_defconfig       |  46 +++
 9 files changed, 521 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399pro-rock-pi-n10.dts
 create mode 100644 arch/arm/dts/rk3399pro-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399pro-vmarc-som.dtsi
 create mode 100644 arch/arm/dts/rk3399pro.dtsi
 create mode 100644 arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
 create mode 100644 configs/rock-pi-n10-rk3399pro_defconfig

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
