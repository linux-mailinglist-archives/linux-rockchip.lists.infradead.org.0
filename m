Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288C71AD743
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 Apr 2020 09:18:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wpNl4kh0bfochjU3RxAVs0vlJNNN7HbZ5X9tQCnk/Q=; b=UUl6tqvZ0qDbrB
	89au0l69ky6NC9NVToHxhbNuqJS2knAo05YQP1zncdxRuM9aYJweqv/7SBpjeykKDkkc+iGjOY1uq
	mXmb2GTdrPmT/j6b71lECrg0MNzoHEmGFe4nORWpEqkL9glX+EFPq6FkarYTlnsEAG/sNXQJRxV56
	ZhsQYCv6xc1vnbw8v+uN3GuaM6OMJRx2OgS44/iJ75wwhQFWx5tCSuywtOSSnQTjQu3MoHVXrWIcM
	XXDJBXnzaWZ64ee1SouIvoHaBOw0KZS/7rhJ7rRKj2RQ/iHhcYKdXh9vcRUeJkt75FrO+5U8fjrzF
	JxAbL30Wd3gqbDiYr0PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPLGZ-00026T-1p; Fri, 17 Apr 2020 07:18:23 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPLGV-00025R-Lq
 for linux-rockchip@lists.infradead.org; Fri, 17 Apr 2020 07:18:21 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id PLGLjhe6v7xncPLGOj9cXk; Fri, 17 Apr 2020 09:18:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1587107893; bh=HSLs2JiZcy4OA1k/VMJ4MaHDQtFq2ylnKTJGakTcPR8=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=D0shEtuyA6wOYrboGofBaD6Hcvyue0LHWkhqvWKl4cAbtlR+789ibtP1go8+npAdS
 D0GJUT2xnk5cC3X13WO8g/7Fa6+BWe0BnzvxtPX5sgfGvl1PBgDfCCXMTipyw0iy21
 miXGRXji8uREA4AP3zoHfQGgMK23lJVpbmtJHMud3KbXoTDg7k/iJ1Vzi4FYKaGhOB
 9RvGs9lDNxWItdMUUytQXVk1iZ8gYrv1+i8XHXUZcyHdh7+wVoayGIwBUZtwzcTgaN
 M8JHq2lwj72RCeNFDeBABlrTxp8HjSoTKN6BrYVUtB8IXEcr3ZbO/UtFhRxYrhCZZX
 RvVEV+D9R0kPA==
Subject: Re: [PATCH v2 7/9] media: MAINTAINERS: rkisp1: add path to dt-bindings
To: Helen Koike <helen.koike@collabora.com>, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20200403161538.1375908-1-helen.koike@collabora.com>
 <20200403161538.1375908-8-helen.koike@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <9a95d227-9592-2c5c-fe6d-dff9b84f4292@xs4all.nl>
Date: Fri, 17 Apr 2020 09:18:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200403161538.1375908-8-helen.koike@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfN/6IaxCKZYDRmsDs68Ac7Ohz+Yi31l+n/3qIvjgojpcfRUtSJSc05kGL2CfXDapr3Rq4gYZgR4YeLxd10TX4h+NBJFBcEU+jLCtDcwIuTse6A59qRpJ
 WiwqnAonGsAFeOerDoqNy1YmLjtUYSNLSY5LUmmSmKy0rm6DvctTMLL3W9KqFzXOfreLQuav06dYKKGgABldV/sXbi1MEA0/2ohTpssCluapKmoWm6umTG9e
 HExIcM3ACV3iIWTi/FPC5szOfNda35Gg/qXqYmby1qh1kIs/HV8CftXHnN5/2d3NpCApcrT7MMY3/uVm+19nTEM/4gEtPEqIY9tyPN5whm6zo7Xe0SjvlqW3
 IJCQMlQnO9vto6abRNvXyk95hQWSImEWy6sW2HSs/de9ytBnO5oQzOgIivkyTXpZwi/Fee2YnCZMiYP02i8q6QHktUWTEguBtgWDT5+tp9IJhrbyHhdZeUCv
 0f6v/H02P6xJWXY334V3m0VQ6GSTi8p3rJKXE/tJ4EuFT8fucFUXQTyG9nlsMApBPgbXguFq1nGWiDYo8XxIfY/JZOPhaeD78ELP20IXX39a21oQUFlNYEW8
 Sv4OmjRKJehtX+CPvRbDgzx2v1cMFI1OQs1KvqsqqQdffVXGX/uoVqqqp+n2fnvsBb4D0CIuZgI89l2iB/T3/PoWTioEn1NwCWNUNnBSHspRLA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_001819_871921_4C98C756 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, karthik.poduval@gmail.com, robh+dt@kernel.org,
 jbx6244@gmail.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 03/04/2020 18:15, Helen Koike wrote:
> The Rockchip ISP bindings was moved out of staging.
> Update MAINTAINERS file with the new path.

Shouldn't there be a reference to Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
as well in MAINTAINERS?

Regards,

	Hans

> 
> Suggested-by: Johan Jonker <jbx6244@gmail.com>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
> 
> V2:
> - This is a new patch in the series
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d66ac41ef5872..726044b84cf23 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14303,6 +14303,7 @@ M:	Helen Koike <helen.koike@collabora.com>
>  L:	linux-media@vger.kernel.org
>  S:	Maintained
>  F:	drivers/staging/media/rkisp1/
> +F:	Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>  
>  ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
>  M:	Jacob Chen <jacob-chen@iotwrt.com>
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
