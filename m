Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F18D3340
	for <lists+linux-rockchip@lfdr.de>; Thu, 10 Oct 2019 23:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFJMl+/9KPLN0f46R4qaLbGFj/6Ts1kldnpfDoLsw6E=; b=FINekEQPeSB8bv
	KWQ6ti95Vkx4tYkn1hxDq7tM6fIScrWRvLn6ocNXYW267J/0PoZQPFswlXDB/0mncKFJaqHDVDbHu
	njJGkIdV1dO0LQnzU0t06k3hnk/Jes/JhGlZgMma7eJezRIog1f/bhIlxFpEZrkDcridN5Smfvmdt
	6bOOAnbOMkgw+3qNdpK+KZDA+qUFTmj5n6fVyCGp+MAiX6Hd0eZVH8BmVhZAHwzY5xyC68iGlFzbP
	m8o4TlM5Cv67S0lSRZLRcPQhWb5i+xZe8CViwJkYcKx6D0oYwl6bzcGi5IPNNBv/5CSpSYKGwb6R9
	AVnnH3kNKVFFHgdjmxIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfs9-0004Eu-6b; Thu, 10 Oct 2019 21:21:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfs5-0004ER-Q5; Thu, 10 Oct 2019 21:21:19 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iIfs2-000772-7z; Thu, 10 Oct 2019 23:21:14 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add cr50 tpm to rk3399-gru scarlet
 and bob
Date: Thu, 10 Oct 2019 23:21:13 +0200
Message-ID: <1981411.DENka8z7px@phil>
In-Reply-To: <20180822120925.12388-1-heiko@sntech.de>
References: <20180822120925.12388-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_142117_995954_F820BA7D 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: amstan@chromium.org, sboyd@kernel.org, briannorris@chromium.org,
 dianders@chromium.org, smbarber@chromium.org, apronin@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 22. August 2018, 14:09:25 CEST schrieb Heiko Stuebner:
> Scarlet and Bob use the Google-developed cr50 chip to do things
> like TPM and closed-case-debugging.
> 
> Add the nodes describing the cr50 and its spi-connection.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

with the cr50 now having reached a maintainer tree,
applied for 5.5



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
