Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE5618BB0E
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Mar 2020 16:26:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIcyn3UQPfswcC7ZRbzF+hMYcrqzsU8t2EpN2BfL6ow=; b=eFii47btGSplks
	ylzsBFkzCNyMWsqxomo3Uzl1xGymNW70nRe6XhCsGcwAi+3z2UXbWxjjZv3YPY62aRPsKWC4HfliP
	KXUdLC/xcDfnakxLbAIo6R01vhw74jtWRoLTdwquyu/EmSO310WW6gfg7wNM3+3OjUHk1lDwacxWP
	i/lPzHwh0a2sJs2J3tGsmkOmxKnX6TLgl9gt9SIsxc1gYMo+wWNRSaHV2JlYT9f6yLNygWqwFmQZF
	iTPv6PcJuwlN5g64Jhu/LkozPpwDe1l3c7xpVXZ0myjXXFL2mci/dOoyw5Aia+rtyYoZwolxgYk1l
	gh7AJahqK2J3bvmYhn8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEx44-0002zY-Np; Thu, 19 Mar 2020 15:26:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEx42-0002z7-25
 for linux-rockchip@lists.infradead.org; Thu, 19 Mar 2020 15:26:31 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jEx3z-0001ef-OB; Thu, 19 Mar 2020 16:26:27 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v2 8/8] hantro: Add linux-rockchip mailing list to
 MAINTAINERS
Date: Thu, 19 Mar 2020 16:26:27 +0100
Message-ID: <1737479.UCjzuJY553@diego>
In-Reply-To: <20200318132108.21873-9-ezequiel@collabora.com>
References: <20200318132108.21873-1-ezequiel@collabora.com>
 <20200318132108.21873-9-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_082630_247108_45665075 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 Rob Herring <robh@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 18. M=E4rz 2020, 14:21:08 CET schrieb Ezequiel Garcia:
> The linux-rockchip mailing list is relevant for the
> Hantro driver, given this support the VPU present
> in Rockchip SoCs.
> =

> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 28bbbb6c73ef..dc56b9bfc3b3 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14313,6 +14313,7 @@ F:	Documentation/devicetree/bindings/media/rockch=
ip-rga.txt
>  HANTRO VPU CODEC DRIVER
>  M:	Ezequiel Garcia <ezequiel@collabora.com>
>  L:	linux-media@vger.kernel.org
> +L:	linux-rockchip@lists.infradead.org
>  S:	Maintained
>  F:	drivers/staging/media/hantro/
>  F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
