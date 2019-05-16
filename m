Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4297B20E1C
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 May 2019 19:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rmas2evl8M5m05IQGaVQq8yt+4Y6qjehlPFJev5vJHI=; b=dvGy73hB0A2HtN
	T8htwOqxkp6uE2scsXwlDAaB5RXrtGp8ORd/NFe7wBnwIRlxdHrdI/oAGFUqpwQYMrrvC1DReyrZ0
	15+24zGxGkrDo/jH4O8ZSJ3Mcuu8mUnyf9WEje6Guom8m175Wmd1xFWhT3ZNACt7OnUic20yf0Seg
	SnER02ASm9n72tIASCDU2rF6WYzZs2ae/R5PhbHauHqgvqqesM9tbo8b0fq7D06x/fFzMzZ/dNoU0
	G4GgJDbE7v6zuXInIiF52p04oK/0rSB26yqCU2YniXgu+bo1ToUYXJWCuGare22MdmHIyywfXm9jR
	gK68CmyJAqJJS4Dib5bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRKNG-0001Sp-RG; Thu, 16 May 2019 17:40:58 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRKND-0001S7-SJ
 for linux-rockchip@lists.infradead.org; Thu, 16 May 2019 17:40:57 +0000
Received: by mail-vs1-xe44.google.com with SMTP id j184so2844023vsd.11
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 10:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dgE84Psb/U3etWxpJVt5b8VqKHdbZZrtGPq4Io8QnvM=;
 b=AIRBhrVhFgw7bH2pwHcH9I6R1AqBcsTlPNnNcXJpBf/pEYgcBTvHtbbQvYiD0GdjC3
 Vcii/zl8/NPtJhsrz/3lINqpDAb6oedjkKAJK8LzPcY1+uUm6aNi4S9Dtla3/QabW+ws
 yU6hWLGod2ZBeAEJzafr03Uc6WR2SvzI45sUc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dgE84Psb/U3etWxpJVt5b8VqKHdbZZrtGPq4Io8QnvM=;
 b=d2FmuEgPVgWB4fqIv002PDgeifeaVpX7FxnrNCvbmjUIvBGeMkhiw5CBnk7+Y5Lb+3
 6lJuhZEp1hwxjAjsAxrpSX+uQ7MGEcsLxfu4Y6ZJwjqPG0ikltPph9WZ0BScDG6Nebvn
 mFqnymgn9e6Reeze2bjF1ShuCXsmzjvYIMidwDNOzaHprs+k9ikLS0JF2oip6M/q4CXz
 V1VgIOBR+cc6FfmmPwKeQcP/7OR7BFme9j99ij1AeuiIZWxbBGWGQqionHuHL42wv8qe
 GfS0iKGwI00LScWXs+iDSsqsHMDDwBBiDJSF2CTkGOKntYXX57z3jUICptItH+kQiFUC
 08mw==
X-Gm-Message-State: APjAAAW/u+gU4+h25huDTIanIxajcQTvJIQqvfchltXM767+sV88t9Hj
 nhzcVeJiaOWw7A687Lni00O9Q6SwaTE=
X-Google-Smtp-Source: APXvYqzB/SRVCL/NibKzJcpzoEeLbRnz3KJwpYHE9lvD6LD3Cs2RthUhmSTdE1fFdtR8TJS9KZGKqg==
X-Received: by 2002:a67:87cf:: with SMTP id j198mr8699620vsd.167.1558028454704; 
 Thu, 16 May 2019 10:40:54 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com.
 [209.85.217.48])
 by smtp.gmail.com with ESMTPSA id r70sm5003363vke.36.2019.05.16.10.40.53
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 10:40:54 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id e2so2837238vsc.13
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 10:40:53 -0700 (PDT)
X-Received: by 2002:a67:1cc2:: with SMTP id c185mr1516432vsc.20.1558028453360; 
 Thu, 16 May 2019 10:40:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190516172510.181473-1-mka@chromium.org>
In-Reply-To: <20190516172510.181473-1-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 May 2019 10:40:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UQcv1+HC2eAk2ctBofufCi9-VvWc+OnY0mtBw3L-YG+Q@mail.gmail.com>
Message-ID: <CAD=FV=UQcv1+HC2eAk2ctBofufCi9-VvWc+OnY0mtBw3L-YG+Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: gpu: add #cooling-cells property to
 the ARM Mali Midgard GPU binding
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_104055_917203_3296DEF5 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Kevin Hilman <khilman@baylibre.com>, LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Thu, May 16, 2019 at 10:25 AM Matthias Kaehlcke <mka@chromium.org> wrote:

> The GPU can be used as a thermal cooling device, add an optional
> '#cooling-cells' property.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v2:
> - patch added to the series
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> index 18a2cde2e5f3..61fd41a20f99 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> @@ -37,6 +37,8 @@ Optional properties:
>  - operating-points-v2 : Refer to Documentation/devicetree/bindings/opp/opp.txt
>    for details.
>
> +- #cooling-cells: Refer to Documentation/devicetree/bindings/thermal/thermal.txt
> +  for details.
>
>  Example for a Mali-T760:
>
> @@ -51,6 +53,7 @@ gpu@ffa30000 {
>         mali-supply = <&vdd_gpu>;
>         operating-points-v2 = <&gpu_opp_table>;
>         power-domains = <&power RK3288_PD_GPU>;
> +       #cooling-cells = <2>;
>  };

You will conflict with d5ff1adb3809 ("dt-bindings: gpu: mali-midgard:
Add resets property"), but it's easy to rebase.  I'll leave it to
whoever is going to land this to decide if they would like you to
re-post or if they can handle resolving the conflict themselves.
+Kevin who appears to be the one who landed the conflicting commit.

With that:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
