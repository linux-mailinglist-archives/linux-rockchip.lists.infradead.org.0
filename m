Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 848C5EE13
	for <lists+linux-rockchip@lfdr.de>; Tue, 30 Apr 2019 02:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0jyTP/RPzieClcyo+eOmBD9JEoYrNz5FSgNduoKoho=; b=n0Rz0uKm9JY72S
	dwh5NyYXkW1IfUMtqDWsaOysjM7DEdpVNDaoY4CBQPJjNvBrEp+FCqONVaSulMlO7LUiWUI1eUECp
	RcgytDZF8Og9LKYRQ/d6bgJ58cqxqPZrW1R2KLLdz0fQfzqImGfXO/Kk1sYdt1JN9M7s6XP6xfBPw
	D4tq/mPzv6Ag6o8ltDCHrgBGqKVPD04Vc8ip+9IDOF27dngIIzUj87M7dB5ba8CkInJyo2wKG26K8
	uxtSGUlqskrwtAGDSdoGf81JeMiMvXrdrsPM/TrZHXZxmaB915uIcJj2N5KzlM0B5n9cm7VL79aFa
	I2QX8ZUz3IgRJ67hIILw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLH23-0000Sa-4W; Tue, 30 Apr 2019 00:54:03 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLH1z-0000S8-Ld
 for linux-rockchip@lists.infradead.org; Tue, 30 Apr 2019 00:54:00 +0000
Received: by mail-oi1-f195.google.com with SMTP id l1so8061118oib.0
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 17:53:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BmBzz+2LL/ow3G/3LbP1CmQvVguBPHTWsbFfuW3VYi4=;
 b=M8Rpa543nQrXh8nioSDaAWWPDtqlKetPlrXDzeHWkpxi/IBims8mh+O2SqP3dqYEbW
 0zLj77YboGXV53PNS79A8NYD09J7E5YOJ2KBtn5wJkRLguD8n8uukR/NmmqkfvyWlTdw
 amRxdEVTaQN1w88z/VPtHwX0+r67oDTE7kBNr2eeW0YKiQaV1DuRlidNgShxqiuz/nOE
 YsmrkgrNenakPB3oWYpJPSzUKH+C6hNHpbg8jQCLfgi0YT1NF1WcxIuYyXRYzCH4pqR0
 aZ15ta2BHujR/pi3ei0OFvuJcmhNH2GGH0aEpXe3wwY51buA/crJqZYvahBwSZt3I70u
 KWXQ==
X-Gm-Message-State: APjAAAUhBYnp1/ExekT4lOoUnu14ECewO40Lj+LhBxfl3aQfVQVSJ0lr
 nw5je++gOarkMVOp6HEL+w==
X-Google-Smtp-Source: APXvYqwW2Rhfv2aIAH2xrUFX3CT2pOl/jA3haakgGQC0mYloHqU/cAV20Ao2z2vhfN4cRxPrwiFV9g==
X-Received: by 2002:aca:580a:: with SMTP id m10mr1383442oib.16.1556585638536; 
 Mon, 29 Apr 2019 17:53:58 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s2sm3284079otq.28.2019.04.29.17.53.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 17:53:57 -0700 (PDT)
Date: Mon, 29 Apr 2019 19:53:57 -0500
From: Rob Herring <robh@kernel.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: usb: dwc2: Document quirk to reset
 PHY upon wakeup
Message-ID: <20190430005357.GA13695@bogus>
References: <20190416215351.242246-1-dianders@chromium.org>
 <20190416215351.242246-2-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190416215351.242246-2-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_175359_709514_63906D82 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Randy Li <ayaka@soulik.info>, Heiko Stuebner <heiko@sntech.de>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, ryandcase@chromium.org,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Minas Harutyunyan <hminas@synopsys.com>, jwerner@chromium.org,
 amstan@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Apr 16, 2019 at 02:53:48PM -0700, Douglas Anderson wrote:
> On Rockchip rk3288 there's a hardware quirk where we need to assert
> the reset signal to the PHY when we get a remote wakeup on one of the
> two ports.  Document this quirk in the bindings.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/usb/dwc2.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/dwc2.txt b/Documentation/devicetree/bindings/usb/dwc2.txt
> index 6dc3c4a34483..f70f3aee4bfc 100644
> --- a/Documentation/devicetree/bindings/usb/dwc2.txt
> +++ b/Documentation/devicetree/bindings/usb/dwc2.txt
> @@ -37,6 +37,8 @@ Refer to phy/phy-bindings.txt for generic phy consumer properties
>  - g-rx-fifo-size: size of rx fifo size in gadget mode.
>  - g-np-tx-fifo-size: size of non-periodic tx fifo size in gadget mode.
>  - g-tx-fifo-size: size of periodic tx fifo per endpoint (except ep0) in gadget mode.
> +- snps,reset-phy-on-wake: If present indicates that we need to reset the PHY when
> +                          we detect a wakeup.  This is due to a hardware errata.

Synopsys or Rockchip errata?

Ideally, this should be implied by the controller or phy compatible.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
