Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B151B1D8ACA
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 May 2020 00:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FADeYIJ01ejKTByJVwxQ6zN8QayFlOJSRMHBeOHXd8w=; b=mFdgwv0/0mSzt+
	ur5AQvAQTaDmmEIgG0OnOVqsYIgabxejaRDiWA98RTZgjU9sKdykJkaeMxWVYEKz7LkA0SkHfgLRD
	Z/pntfyJpabl8GCZAR9Wb+Z/Mn5sk7s9cqwA6qd1TTVVfyL/Tk7WQ62u0BSqGHmo7Z500z/zYmL1M
	i4yQAiPQ5SjfoLLafruv+58KcnWNmIoWoWBDVUY/3AMyMXd3oLoB8SaYd95lojXl5KNXnFheFrF2X
	9dTqlOv/qEVgSpkKPJv6e3fIP5LCWGqlMpcv9/gJYNMuNhq63Bxsb/s/mPj6cMsCpkL5AFTQeNnqF
	yqnotW1TnBf73flpiSxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoF4-0008Qx-DQ; Mon, 18 May 2020 22:28:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoF0-0008OE-31; Mon, 18 May 2020 22:28:11 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jaoEw-00005F-0v; Tue, 19 May 2020 00:28:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: fix phy nodename for rk3328
Date: Tue, 19 May 2020 00:28:01 +0200
Message-Id: <158984064169.2259329.15579989069543124777.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200505170227.6503-1-jbx6244@gmail.com>
References: <20200321215423.12176-1-jbx6244@gmail.com>
 <20200505170227.6503-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_152810_129666_5567B39A 
X-CRM114-Status: GOOD (  10.80  )
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

On Tue, 5 May 2020 19:02:27 +0200, Johan Jonker wrote:
> A test with the command below gives for example this error:
> 
> arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: phy@0:
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

[1/1] arm64: dts: rockchip: fix phy nodename for rk3328
      commit: 8370cc5533b3baa5e0f18075ae638b050458aabd

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
