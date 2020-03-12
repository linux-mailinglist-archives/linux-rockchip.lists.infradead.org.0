Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4631830DE
	for <lists+linux-rockchip@lfdr.de>; Thu, 12 Mar 2020 14:09:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUyktyUcOZAx38AFjSAsMZEP0Zv3HhsakoYUcBGoKdI=; b=VWstb0PweMV/sY
	B3ogK8fzrGs8ucR1HAQPCItx1idiV7Sk1nh/4UyRG19DetPi8Vnz5vKJMhSlJZVO/FhA8luG3AswR
	K5k4ShWaRGd3441lh0di+YIeW0DJBdBvzqnRCDFiEMhNf8Z+agDHQeGUEhAZ7eq6yePUUhzuJC4D8
	7RyPH97JB6m7emQzHcjky3Iag5g9LYbz6tGhWrFWXvRZbnuUhThhRyHxjdSE1W+Y3yweTtbh90/cq
	J9byr46kQtXTYihf3WA+B1P9mNB8HSmVZHs712D0lBgAy9kZMDHbMbp7GuAwEZLqLCEfR38I8azGb
	unmUrVaBPLTXFykGrzAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNaB-0006nZ-7U; Thu, 12 Mar 2020 13:09:03 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNa7-0006mg-A1
 for linux-rockchip@lists.infradead.org; Thu, 12 Mar 2020 13:09:00 +0000
Received: by mail-vs1-xe43.google.com with SMTP id m9so3634664vso.2
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Mar 2020 06:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c/71/1S9FFPBZLngXcn7eOGZxEYwsgQn+LiJXaTEkt8=;
 b=piJo3Qvo8x1s8VTBvAp8jS5t4o5VQEuBs+lWQCHYrxpJbtweH35oefXEg9GnzRQtdz
 61TRYLXGKrksVOp7wxdDFIZl5QZ824OocSJHbPk7P8hZ70jpr88EaUGavwPNoL4Dn36K
 Nl5oXBejzLR1jLeDJKzYb6ixDcAWzPP7oWG8OeFjKk4/PM28R2Me2D0Tsq7x8rhewXrt
 r9U/8MqANn4Ec6qJ2Rhiv85PM01uXdt4/JzUZZopZGKv0JxfViBO1WHel4O7GIJWC1qc
 CC+Rw5K2v3jnnd/eFLnzoQo/ZNl/T0nWcHZQA9pE0ttsgYASG3J1iRFvKPj7l5rZ/lPs
 Rsiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c/71/1S9FFPBZLngXcn7eOGZxEYwsgQn+LiJXaTEkt8=;
 b=cTp+SpIAHgNaXcw9FPfV2lBZ200QJmmmB9WC891/fx9vEkcLoh2LP91OyXfbUUIMgG
 AKczW1Te/peXT1mRl8BZu4WCy92unkUPI9mAuBXD/79Ixd+kvZW2PRmkK6fJPF7bOJQt
 VhS+5Yn7QRMHP7Cg7Y1h8k4TbX3zy3AtKr+Vaop2HA4efkOIfmufia4gkvn36xMiTuQx
 WzJ8CKFTy93XIB5AA/PmNH7CdsXiV16WyVnp5vFMnhNlVBN3Mm2a6B5gEOCu5gB/WBY1
 5+wiZTX5MQnKLDzFyehlKh9yIQZjmx/t9X/XkbL6g88q6Ehf3JIyFSYrNOwaMt+NtraL
 1HNQ==
X-Gm-Message-State: ANhLgQ0l2nbwXed/stNbA8nHXtOoUUmYR4Dh1OKoqr/ut9n73rbziUAn
 wCb5kwlTLFHJ/8YMDWTuZqM6yMKYy3WZfxua6wsnOA==
X-Google-Smtp-Source: ADFU+vvkBY6+7KljoIBo06yuh++7mQGBlfwWaxlmBrxgvs2H6ahSYqDiyk/zugbPV+nCMOkSfEf3tQK6yQglm6UvXwc=
X-Received: by 2002:a05:6102:2051:: with SMTP id
 q17mr5487529vsr.165.1584018537836; 
 Thu, 12 Mar 2020 06:08:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200307160556.16226-1-jbx6244@gmail.com>
In-Reply-To: <20200307160556.16226-1-jbx6244@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 12 Mar 2020 14:08:21 +0100
Message-ID: <CAPDyKFq22RTPQ2FD+yMYTstyEhqU=6piiiDkEFs4CB5f6uRG4Q@mail.gmail.com>
Subject: Re: [PATCH v1] dt-bindings: mmc: synopsys-dw-mshc: fix
 clock-freq-min-max in example
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_060859_352277_41B4A92E 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, 7 Mar 2020 at 17:06, Johan Jonker <jbx6244@gmail.com> wrote:
>
> A test with the command below does not detect all errors
> in combination with 'additionalProperties: false' and
> allOf:
>   - $ref: "synopsys-dw-mshc-common.yaml#"
> allOf:
>   - $ref: "mmc-controller.yaml#"
>
> 'additionalProperties' applies to all properties that are not
> accounted-for by 'properties' or 'patternProperties' in
> the immediate schema.
>
> First when we combine synopsys-dw-mshc.yaml,
> synopsys-dw-mshc-common.yaml and mmc-controller.yaml it gives
> this error:
>
> Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.example.dt.yaml:
> mmc@12200000: 'clock-freq-min-max' does not match any of the regexes:
> '^.*@[0-9]+$', '^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|
> uhs-(sdr(12|25|50|104)|ddr50))$', 'pinctrl-[0-9]+'
>
> 'clock-freq-min-max' is deprecated, so replace it by 'max-frequency'.
>
> make ARCH=arm dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> index 05f9f36dc..dd2c1b147 100644
> --- a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> @@ -62,7 +62,7 @@ examples:
>        cap-mmc-highspeed;
>        cap-sd-highspeed;
>        card-detect-delay = <200>;
> -      clock-freq-min-max = <400000 200000000>;
> +      max-frequency = <200000000>;
>        clock-frequency = <400000000>;
>        data-addr = <0x200>;
>        fifo-depth = <0x80>;
> --
> 2.11.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
