Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E59B1D8ADA
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 May 2020 00:29:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NKQKUEdJw6TEQx0Z271hfqfVmRLSc2fXgD23fifF3Y4=; b=KaEusDBp9ajK2Q
	mGOyfTNj9JtIEFodMYmrYoZQ/cgs+zGs6g62Ir1KdaQa1mVZdZ9tjrLFN/GfmGq7VJ2ziuITklzNR
	Gx1vSgWSWzQD+zhDk2MQGnSFUCsBXVmVUDDq5PEwwrR1/CJWQeqKrfeRb4qCSR8JaxJzFGfS+31SF
	6BnokUqYCDMfSNciOJS2WbdfmGxslmo+/PeDuUps/q+KMwWLBHPiew0rSHyDQsTn1G8k1RI3Tp/wB
	qij6z1xEfbBpZsfe0UIm88w43b213rXj+pTZVn54idOgD7B1GJ+JVrGZXlsPE8ZLcqA62+lYBA4u1
	CJKIfiNbdneclCgvRGhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoFv-0000kw-5f; Mon, 18 May 2020 22:29:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoF0-0008OC-4T; Mon, 18 May 2020 22:28:12 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jaoEv-00005F-OU; Tue, 19 May 2020 00:28:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: fix defines in pd_vio node
 for rk3399
Date: Tue, 19 May 2020 00:28:00 +0200
Message-Id: <158984064169.2259329.3276929143055218816.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200428203003.3318-1-jbx6244@gmail.com>
References: <20200428203003.3318-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_152810_171770_AD935D68 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
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

On Tue, 28 Apr 2020 22:30:02 +0200, Johan Jonker wrote:
> A test with the command below gives for example this error:
> 
> arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: pd_vio@15:
> 'pd_tcpc0@RK3399_PD_TCPC0', 'pd_tcpc1@RK3399_PD_TCPC1'
> do not match any of the regexes:
> '.*-names$', '.*-supply$', '^#.*-cells$',
> '^#[a-zA-Z0-9,+\\-._]{0,63}$',
> '^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}$',
> '^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-fA-F]+(,[0-9a-fA-F]+)*$',
> '^__.*__$', 'pinctrl-[0-9]+'
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix defines in pd_vio node for rk3399
      commit: 84836ded76ec9a6f25d1d0acebaad44977e0ec6f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
