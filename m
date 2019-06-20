Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402154D43E
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 18:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhoYcWFT6i7lmgLPCI6ngD46D2ZlU9RS+QOXOmQKzVE=; b=YocE3mZJt/IZx1
	cb0dCAJbm4dO47/QJY5/V2WIY0PgDGmeXmmK1wJck6ombPAx6HrMJXRMo552VV3OiujsHM7N/f2MK
	Y1bKamD+NsS53LXZwIbMAn6EponmGbRnuOUR2OgXScx2ITt20QFmm23vf8ZhzTaa/fejC8s8cByIt
	waOo4z9wJPbM9cDHXke6mpdxOBs+WPdKA9JoSuGPssJW34k+Q2+F2F9YtqOgp+GBykK2QGUt8/4ra
	Wfi/T3Nvb5lNFH+3oCPtx/SzlKoTQfhEVG9NHYdvxszMHJjFzY5jcpVnqBGHTN6QCLwvMUxq4RDoG
	ju/CBGgp4BnI/g6cs9dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0Hp-0003If-3E; Thu, 20 Jun 2019 16:51:45 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he0Hi-0003I7-OY
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 16:51:40 +0000
Received: by mail-ua1-x944.google.com with SMTP id 8so1872178uaz.11
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 09:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OeFgssC06Ca4X3IXaHWlew+6T79MlwgCU07uMivbM10=;
 b=TtS7/2F/OTZGse3QP1Ezkd7+vMwTgyaEqyIgOAtPig7D5aPJz70bKNReyIUkk7+On6
 UWVf+T8HfAS8IFEMpSLgAMqz+HQoyrcztrkZ54szcGOHzusNg5Fw0O9cWtDmQmMLZwJE
 SE7nqQdAv/L+QXxO/PwU7I4Nw3N5EnBJEPuVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OeFgssC06Ca4X3IXaHWlew+6T79MlwgCU07uMivbM10=;
 b=LydHLhTgb057IGondA4ZLHL77OVfIYba4/n8R7QFnLL4sBzsRjofE2WxAt0ih103Yw
 u4qpkCtkinLTq3KDeI1IcJ20HSTmy6ENi/PBrsWOJ97e4UeuXOdXVUZJsS+08lKMPW6v
 fWX3C6fbD0gBHajZPkjQfnKl+vVkYlvCL6+OfkwZ9gM9f6Q/x7pYzmBlNozcyAtYXljq
 LYkFt099jDy1Cub7id6BLnQztJFJNsLsHprswycRN9QjMNAIQPTX23bNHVi2sQuJo6WU
 gAKkMjCV7i+1jVlgqdluc6FtMwrbBu4MoIrTRfRBsNmCpcSSveqJB+dgpympY4Y8SW9w
 Xe3Q==
X-Gm-Message-State: APjAAAVF99JPMTbGACnMIqm04VaGl7dlga6KUpsDZNjmw9T63E75UyS3
 jXiYQg4o8qMTdvlnRFVyS4G5gH4pIOY=
X-Google-Smtp-Source: APXvYqwSF9TcRu2dGIhV4nuSAsDHgz0JSUJpblKFRKBSDMav9cogX7LrdtF2vwm+XCh50cHWJO9NEg==
X-Received: by 2002:a9f:21e7:: with SMTP id 94mr6078149uac.137.1561049497481; 
 Thu, 20 Jun 2019 09:51:37 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com.
 [209.85.217.43])
 by smtp.gmail.com with ESMTPSA id t4sm81174vkt.33.2019.06.20.09.51.37
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 09:51:37 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id n21so1967369vsp.12
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 09:51:37 -0700 (PDT)
X-Received: by 2002:a67:fd91:: with SMTP id k17mr58238625vsq.121.1561049028723; 
 Thu, 20 Jun 2019 09:43:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190618213406.7667-1-ezequiel@collabora.com>
 <20190618213406.7667-2-ezequiel@collabora.com>
In-Reply-To: <20190618213406.7667-2-ezequiel@collabora.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 20 Jun 2019 09:43:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UpZAjrWkQ7qj5Wo2tf2wkg5Q-34Sun0MOtYLBAwY731Q@mail.gmail.com>
Message-ID: <CAD=FV=UpZAjrWkQ7qj5Wo2tf2wkg5Q-34Sun0MOtYLBAwY731Q@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: display: rockchip: document VOP gamma
 LUT address
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_095138_818151_C19B4EDE 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Tue, Jun 18, 2019 at 2:43 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Add the register specifier description for an
> optional gamma LUT address.
>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../bindings/display/rockchip/rockchip-vop.txt         | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> index 4f58c5a2d195..97ad78cc7e03 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> @@ -20,6 +20,13 @@ Required properties:
>                 "rockchip,rk3228-vop";
>                 "rockchip,rk3328-vop";
>
> +- reg: Must contain one entry corresponding to the base address and length
> +       of the register space. Can optionally contain a second entry
> +       corresponding to the CRTC gamma LUT address.
> +
> +- reg-names: "base" for the base register space. If present, the CRTC
> +       gamma LUT name should be "lut".

As per Rob Herring, current suggestion is to avoid reg-names when
possible.  The code should just look for the presence of a 2nd entry
and assume that if it's there that it's the lut range.  Full context:

https://lore.kernel.org/lkml/CAL_Jsq+MMunmVWqeW9v2RyzsMKP+=kMzeTHNMG4JDHM7Fy0HBg@mail.gmail.com/

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
