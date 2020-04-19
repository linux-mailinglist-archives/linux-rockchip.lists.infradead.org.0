Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A246D1AF9DB
	for <lists+linux-rockchip@lfdr.de>; Sun, 19 Apr 2020 14:13:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yW9unTn7OmbKfDiWW5k/WIra6JTDs+nrLXL4QzouwE=; b=Mgi8qGFZKoI1To
	WSKyZq44PZEoTABRibC6HLJw9JzFAAefYBqrZlC7JK7bZhfXic1WUrggOsRN5qK4H71bxh9rKwmco
	vRjTGKHHgciMdQwCz1DpmD3w1VHfQXsmZj1JsNWCCBHUNXGrNmcw6QKV2f8TFWnEJOzDm+GzMQl/6
	05bcK4HcYTW9frtF5i2IRDwgT2DDlbAlItIXwCu3Trqag1MybEqIGXWwkrUo+A+H/CUhgR/9/65kU
	lDDnFxwdkualIrIfWB7g/z5CiimGES5rbJDwSIbLdAj2KFQJPYU8NUfQDMybLbbtSwZrCUS7qdi38
	t5fhvRzXzYGA+BU6Le/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ8pQ-0003nz-Ft; Sun, 19 Apr 2020 12:13:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ8pC-0003e3-5H; Sun, 19 Apr 2020 12:13:27 +0000
Received: from p508fcedd.dip0.t-ipconnect.de ([80.143.206.221]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jQ8p9-0006f3-5Q; Sun, 19 Apr 2020 14:13:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: fix phy nodename for rk3228-evb
Date: Sun, 19 Apr 2020 14:13:06 +0200
Message-Id: <158729833730.67563.9205424674473235719.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200416170321.4216-1-jbx6244@gmail.com>
References: <20200416170321.4216-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_051326_198512_4F9EDE30 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 16 Apr 2020 19:03:20 +0200, Johan Jonker wrote:
> A test with the command below gives for example this error:
> 
> arch/arm/boot/dts/rk3228-evb.dt.yaml: phy@0:
> '#phy-cells' is a required property
> 
> The phy nodename is normally used by a phy-handle.
> This node is however compatible with
> "ethernet-phy-id1234.d400", "ethernet-phy-ieee802.3-c22"
> which is just been added to 'ethernet-phy.yaml'.
> So change nodename to 'ethernet-phy' for which '#phy-cells'
> is not a required property
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: rockchip: fix phy nodename for rk3228-evb
      commit: 806bceeea63f58bde45dbd633092bd9d14da02b0
[2/2] ARM: dts: rockchip: fix phy nodename for rk3229-xms6
      commit: 5c5555f7efed273c61152da03cd395a0d06e054c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
