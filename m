Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 557D9DE708
	for <lists+linux-rockchip@lfdr.de>; Mon, 21 Oct 2019 10:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uAvWgODrKdHOXVWv7j30a8c/fzQwdC/8gGPJb/s0Cuc=; b=KXz
	JUE98CPCZ14+8wanwwZPHDLIoLILmkSqFZyWVKzRRUlgzSScHZk9ecZpXSzxEeJnL1aRasw/V/IY5
	Gq381VH4o5Ev/ucGtq6WPW0FVCnn1Shg0wwUJELigaMkBO4lRU71qEad8pyJVY3PeQS3gIhhwoUUR
	OobkNiqNJx52YsApcEvn2o1//nbH5Hj6EQ3O1ywXjU+yerj8z2H1fKSIJsf+eY59N8v8i7XEtX9qY
	jWvoqh2z+Ej/lxAGmCjfdhvr69Kzh6UFZ/8DdOlDkkzwcmPA0bzsqmyartGNH8PdOO9ByT7EBvk1a
	qpigYG86v4p0TMPavkMVRMfZpjb5Nsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTMc-0006Ly-Vl; Mon, 21 Oct 2019 08:48:30 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTMN-0006AB-U8; Mon, 21 Oct 2019 08:48:18 +0000
Received: from localhost (unknown [192.168.167.13])
 by lucky1.263xmail.com (Postfix) with ESMTP id 19C5A6D701;
 Mon, 21 Oct 2019 16:44:43 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P14676T139991587989248S1571647478717790_; 
 Mon, 21 Oct 2019 16:44:43 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <edcff55a6422f1ea35f4da4024163433>
X-RL-SENDER: andy.yan@rock-chips.com
X-SENDER: yxj@rock-chips.com
X-LOGIN-NAME: andy.yan@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Andy Yan <andy.yan@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2 0/4] Add basic dts support for RK3308
Date: Mon, 21 Oct 2019 16:44:37 +0800
Message-Id: <20191021084437.28279-1-andy.yan@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_014816_127248_B105353C 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.133 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.133 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

RK3308 is a quad Cortex A35 based SOC with rich audio
interfaces(I2S/PCM/TDM/PDM/SPDIF/VAD/HDMI ARC), which
designed for intelligent voice interaction and audio
input/output processing.

As the clk and pinctrl drivers are landed, we post
the basic dts support, make it convenient for other
module development.

Changes in v2:
- Address Heiko's comments in V1
- Split with the dts file
- Split binding to a separate patch
- Power tree update.

Andy Yan (4):
  dt-bindings: Add doc about rk3308 General Register Files
  arm64: dts: rockchip: Add core dts for RK3308 SOC
  dt-bindings: Add doc for rk3308-evb
  arm64: dts: rockchip: Add basic dts for RK3308 EVB

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../devicetree/bindings/soc/rockchip/grf.txt  |   11 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 arch/arm64/boot/dts/rockchip/rk3308-evb.dts   |  230 +++
 arch/arm64/boot/dts/rockchip/rk3308.dtsi      | 1838 +++++++++++++++++
 5 files changed, 2085 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-evb.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308.dtsi

-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
