Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9A716A969
	for <lists+linux-rockchip@lfdr.de>; Mon, 24 Feb 2020 16:06:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vy48pyo1UmVYZDIhx5sI+vUWqJr05eDghit5BJMcz8o=; b=B8WFeLzhgiOi1DLk72R+0kgBG
	TqNL5YItWwmL+m5gRk8aHfVawZoGG5xxvOmPUh5zyoZrjLYHpUbThmGlZ/GTXzvCeWP1WkkyCquTh
	9es9BDbCce0ZCFiFZNrPGkfxES5Nm0fPrvkx+dff6kZV4wa0o8ComNU/pYcOAG0r+tp1gCK/iar9K
	uFd5CVZaLWuim6gjyp2osY5pzfjp18qZw7QwBPS7/N3BztZMkAixLmcZma2WPErnKMxY+NsGKOrzM
	d7B3X90ErgXvLulbTfQrY0Ny+pYmcSpkgMREEjIx1M8ZdsEveyzDkt5I0POmpYAsVamIcdFlE2p13
	D7Ne6CXbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6FJL-0007hk-Mk; Mon, 24 Feb 2020 15:06:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6FJJ-0007h8-7E
 for linux-rockchip@lists.infradead.org; Mon, 24 Feb 2020 15:06:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CD3641FB;
 Mon, 24 Feb 2020 07:06:14 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BF20F3F534;
 Mon, 24 Feb 2020 07:06:12 -0800 (PST)
Subject: Re: [PATCH 3/3] drm/panel: add panel driver for Elida KD35T133 panels
To: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org
References: <20200223150711.194482-1-heiko@sntech.de>
 <20200223150711.194482-3-heiko@sntech.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ec42b04a-4727-cbd4-d0c4-21a8def8abd0@arm.com>
Date: Mon, 24 Feb 2020 15:06:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200223150711.194482-3-heiko@sntech.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_070617_304596_06DE0FAE 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, thierry.reding@gmail.com, sam@ravnborg.org,
 christoph.muellner@theobroma-systems.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 23/02/2020 3:07 pm, Heiko Stuebner wrote:
[...]
> +#define dsi_generic_write_seq(dsi, cmd, seq...) do {			\
> +		static const u8 d[] = { seq };				\
> +		int ret;						\
> +		ret = mipi_dsi_dcs_write(dsi, cmd, d, ARRAY_SIZE(d));	\

Nit: in the rocktech driver, dsi_generic_write_seq() is wrapping 
mipi_dsi_generic_write() which seems logically self-consistent. 
Therefore shouldn't this wrapper be called something like 
dsi_dcs_write_seq()? I have no idea what any of this actually means, but 
the dissonance is enough to make my reviewer-sense tingle ;)

Robin.

> +		if (ret < 0)						\
> +			return ret;					\
> +	} while (0)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
