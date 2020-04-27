Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 811181B98B7
	for <lists+linux-rockchip@lfdr.de>; Mon, 27 Apr 2020 09:33:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ix602u19zjtMXZt8TV/tWkO4EVFCYUeZ7W7NAOnloyQ=; b=FDxernS/gtvTfi
	ZwiVJPCY2L7Y8u3S1zF2OW++O3/mumUPoCwxQG4N4s7NnkjVpjCjBhtkt+13WAe6EqZkR7OWhikkG
	Geq9siBNNuZ1OIxVwWN0i8+Ly4ZEGzcuJBjasCPfWQciC/l19Uqajf+ifrL7Hv/1nd3Yq26tWb+rh
	nOW7EcTkuqm2VP6KkzkrbUoNAi0jf91S/inSd0gUyxl7omurR1DHjXgKm8qzhE+v/vA+8hQJ44jiU
	o7dO42Nx3KSickqeAA82A5uF2BHFscIN9iI7YMalipX5U+EZ8Td1TqVfcfM85J0BOPgEYlIYnF2gj
	YHSzvD2WwjgLFwMY6d2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSyGE-0000pJ-2B; Mon, 27 Apr 2020 07:33:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyEz-0007ya-KM; Mon, 27 Apr 2020 07:31:47 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ACD8E2087E;
 Mon, 27 Apr 2020 07:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587972704;
 bh=DZdOOmaliopb1c/d+hQBZorZ2uag5Ojix0LVE++Gam4=;
 h=From:To:Cc:Subject:Date:From;
 b=D+OF96DcXa41/8DKZPoNSCHmxtCvE5jf5wXLWbN4j9ZtdbXntBxH5/iq+k9WcAPMs
 K3O6VCUxQWjBGbIX5rHgyxbO8LgcfvKmiAEmYFnTZpUcB+ZJg2LTvjRZ8biskEB5V8
 z6REXBnynG5PCkM3lHhLvTk3PgcQ166jiloQYtAE=
Received: by wens.tw (Postfix, from userid 1000)
 id 602325FBB9; Mon, 27 Apr 2020 15:31:42 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Dan Murphy <dmurphy@ti.com>
Subject: [PATCH v2 0/3] arm64: dts: rockchip: misc. cleanups and improvements
Date: Mon, 27 Apr 2020 15:31:29 +0800
Message-Id: <20200427073132.29997-1-wens@kernel.org>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_003145_683906_1F475453 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Hi,

Here is the remaining patch for roc-rk3399-pc, along with a few other
new patches.

  - Based on discussions from v1, patch one, newly added, drops the list
    of valid values for linux,default-triggers.

  - Patch two is the same as in v1

  - Patch three, new, sets dr_mode to "host" to the dwc2 OTG controller,
    matching what the board uses it for, a host port. This gets rid of
    a warning from the kernel.

Please have a look.


Regards
ChenYu


Chen-Yu Tsai (3):
  dt-bindings: leds: common: Drop enumeration for linux,default-triggers
  arm64: dts: rockchip: rk3399-roc-pc: Fix MMC numbering for LED
    triggers
  arm64: dts: rockchip: rk3328-roc-cc: Set dr_mode to "host" for OTG

 .../devicetree/bindings/leds/common.yaml      | 21 +------------------
 .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |  1 +
 .../dts/rockchip/rk3399-roc-pc-mezzanine.dts  |  8 +++++++
 .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |  4 ++--
 4 files changed, 12 insertions(+), 22 deletions(-)

-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
