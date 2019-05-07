Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2230616A0E
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dsha20lG47hnfqH6u6cWOH274bIF2juqozWfd7vGHYQ=; b=rbRz9xBYEE5Lne
	3DjdtpwH1/olq/iHdvGOHS4OgdoDebmr2DUmdK2dFa7ukliP7YIerE6D0fWO8INbSdlupJJwoA1gk
	vmoH/Za/CT4u1ZBqohI8L9dagq6m3/QsTZVohp7i+Y8ifTkeBaGSrL/DNFi/zcruj4QZGzZlBcwM1
	oepKE3IqIjlaLnnJOVaTFVfNOXg2rWMffQhLlePuJlGiqzDhzzXqbB9djCmDmx3Vk+kL/nbK/EZw+
	+VjmtN47Jq5ETMKO5ySbABGAtvxlZXdL5BsSgA5cr/o6DcXaDQwZlfvL/jwz/UIWNgJm4rPchGBdF
	WgaEfPwY3ZRvB1eJgl7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4jI-00030S-Pm; Tue, 07 May 2019 18:22:16 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4jE-0002zx-3f
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:22:14 +0000
Received: by mail-pg1-x542.google.com with SMTP id z3so5009791pgp.8
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mUfHW2i7fOQTGtIt7HQqRCYJpQdrq20SDCZNht8dDS8=;
 b=bkd/Ht0C3W1ujNsDjnMBcweZ3ek1xb+/I9ZBoEmhyZfnxVu9KoYvdg7OMMlETweLRM
 A2Lp1fDuTh+1ITwIAZlij/ppnSvk5o8OeSgduQeEpaMh4GQhdNvxj1/zk8x2i/zI317P
 ajjjGaN7wrIc5JtG4V5ClSyRyLG+0mozKOJzk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mUfHW2i7fOQTGtIt7HQqRCYJpQdrq20SDCZNht8dDS8=;
 b=e7hA2vAgIAl3lywqSowPG7G+dqn4Co+lROpLP66uMmVjL+Ugf8Tsh/mry2dgEJ8htF
 GoSolrPq2JGyNPE516ZYv7B4Y0lZ1Im9YaWoeHSdsCKbCxLK+Ijbm9w0jQ+eszqRmYsl
 0fjZrBEtn31Cqn7DhM/+IIULO8zf/Sh7WuQjBzZaYP5avjmlqrpi4HEdDbfvUjTnkrfb
 j97Cz+eImblKMnhLu+dzeiGM3gi8w2FMwNse9O2bvj32y+aEJvz1SWsHuxYHa2jfUs5o
 chdSi2Zc4WObey5GJnDP37t/YgidP69BJYvd3DBcPcx8VjtOCb3DKboo3aEaieU8aiNQ
 BXEw==
X-Gm-Message-State: APjAAAUH3cyHl4u7jLEjLntNYYk7sGaY9jY0OxWwBuu1f2KKEjy/RlEf
 AHns3SeqNYt8WQSuHZTVW0V/cw==
X-Google-Smtp-Source: APXvYqx2yj0fnosDNkfe6+yfoc4S4X3d37c10bNZvU8HVlrF9TEwpOnX9g1EKV93E9MDgN80lgnL1A==
X-Received: by 2002:a65:518d:: with SMTP id h13mr41487741pgq.259.1557253330572; 
 Tue, 07 May 2019 11:22:10 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id d15sm18491568pfr.179.2019.05.07.11.22.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:22:09 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH v7 0/4] arm64: rockchip: dts: Add rk3399 -u-boot.dtsi files
Date: Tue,  7 May 2019 23:51:48 +0530
Message-Id: <20190507182152.4254-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_112212_456434_790579A4 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Unfortunately initial version of creating rk3399-u-boot.dtsi 
has been merged, so this series is rework of previous v6 set[1]
on top of u-boot-rockchip/master

All these changes are updating rk3399-u-boot.dtsi and rk3399
board -u-boot.dtsi files and u-boot specific dts changes like
- sdram dtsi
- sdmmc, u-boot,dm-pre-reloc
- spi1, u-boot,dm-pre-reloc

Changes for v7:
- rebase on u-boot-rockchip/master
- recreate patches based on v1 series merge
- add patch for dtb build based on SoC type 
Changes for v6:
- spilt the existing patch[2] into multiple patches
  and send as a separate series.

[2] https://patchwork.ozlabs.org/patch/1091720/
[1] https://patchwork.ozlabs.org/cover/1091909/

Any inputs?
Jagan.

Jagan Teki (4):
  dts: Makefile: Build rockchip dtbs based on SoC types
  arm64: rockchip: dts: rk3399: Add board -u-boot.dtsi files
  rockchip: dts: rk3399-u-boot: Add u-boot,dm-pre-reloc for spi1
  arm64: rockchip: dts: rk3399: Use rk3399-u-boot.dtsi

 arch/arm/dts/Makefile                   | 35 ++++++++++++++++++-------
 arch/arm/dts/rk3399-evb-u-boot.dtsi     |  7 +++++
 arch/arm/dts/rk3399-evb.dts             |  1 -
 arch/arm/dts/rk3399-ficus-u-boot.dtsi   |  6 +++++
 arch/arm/dts/rk3399-ficus.dts           |  1 -
 arch/arm/dts/rk3399-firefly-u-boot.dtsi |  7 +++++
 arch/arm/dts/rk3399-firefly.dts         |  1 -
 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi |  7 +++++
 arch/arm/dts/rk3399-gru-bob.dts         |  1 -
 arch/arm/dts/rk3399-gru-u-boot.dtsi     |  6 +++++
 arch/arm/dts/rk3399-gru.dtsi            |  1 -
 arch/arm/dts/rk3399-puma-ddr1600.dts    |  1 +
 arch/arm/dts/rk3399-puma.dtsi           |  2 --
 arch/arm/dts/rk3399-rock960-u-boot.dtsi |  6 +++++
 arch/arm/dts/rk3399-rock960.dts         |  1 -
 arch/arm/dts/rk3399-u-boot.dtsi         |  4 +++
 16 files changed, 70 insertions(+), 17 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-evb-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-ficus-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-firefly-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-gru-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-rock960-u-boot.dtsi

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
