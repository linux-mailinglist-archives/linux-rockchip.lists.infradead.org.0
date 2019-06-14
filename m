Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F269B46893
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 22:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WgpCRaytiD58Hz7OOI7SuD+3+Fc1Q9xPaGWt3qExSU=; b=PUB/xh3N9DNUdb
	y356UbsoRBkX8baz/2Z33LdOe8TT7qw4YMSLcoz6cEUTJMGZvMp887fn8vyxq3OVWRbe2dz0zCXqP
	cidG5FIURRA2uKkK++ByNOZ9c3g2+lP5VhMcHLh6F8nWb3rbqXxfNTGcREaX0UZg7KYm/jR3NrxkA
	hRkfwg8tZkYDeJ6//D7L4cSxBQOmuP40gakcXP3Do2gp+7jVTCVUuj7FbOkvp+/yKri3Psi1R5ELM
	f2StuAIFwOMn2qg5Z8669AtbNB4wJUlmeik9oOtQoLLwmIzxpSI8sd60KmUNnMyhT+R2awWsMU9ku
	N0IbSLPhtx2csRzkrJyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsSP-0006Aa-75; Fri, 14 Jun 2019 20:05:53 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsSL-0006A5-SF
 for linux-rockchip@lists.infradead.org; Fri, 14 Jun 2019 20:05:51 +0000
Received: by mail-io1-xd43.google.com with SMTP id m24so8510477ioo.2
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2019 13:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5C43wu3L3N5pzf6np2Tk2w1tK+vx4ydRwvLJgDPv+o8=;
 b=AMP0YfPOb2jb7VFloRLdhNb04ngviheKaydxfNhvw9H6hfzRLPrkjGU9PEg9BUCkmd
 NZznbE9H/0ARo631Xkw0pUVxmRat8rBYqVXXl8UxFcQSKChFr8yLA14KEfCWjcSoZ1CY
 htcdN+RI4rTg3dbZfxOYq0AXi8Nxf/W/kQjZM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5C43wu3L3N5pzf6np2Tk2w1tK+vx4ydRwvLJgDPv+o8=;
 b=TkFvJCboKLdca5udV9iljxv5uTuY/NbKNfW67yxEDTmIoNl4lxDTQZ2dehUNBlKH3p
 Tlqzg7CPvCC4wvG0Ji1USnrqDMbZLBrITQbX3tEtD2cHRnExt2sCGueGMyEU83vvKq+r
 GqPSV19D9NmXxqUiN/RtiOJdF1xhea4pFpdyV+ifgER48kZ3lxc7ShwQ3pFctMiwL+z4
 GHcUi5ODqpVw47YptPCJW9kreXvCO14l96+dslDOiMV9qZWDdmW5HOal3S/GMmLJqiHc
 hzvpRyR19cGr9XdIFduXgf6CA4/KEpUQF0AaFOdv1Tx6mqYb57nhmy7Y7pErekpmio3V
 wEgg==
X-Gm-Message-State: APjAAAVMaOl36yUP8+NqkRP7WfdEvEjFyQJrYi9Nh2UmS0ekeoW/hGwH
 CbNMfsa4717BJNFqIlJGKPLK8womxdI=
X-Google-Smtp-Source: APXvYqzpzAv6UCZlXh/4RVTiAIotkVX3+ywVYVlTJcG9T9ZVb+8drpU8a9Caxvt9W3hf+8+nKuGSLQ==
X-Received: by 2002:a5e:8508:: with SMTP id i8mr8554393ioj.108.1560542748347; 
 Fri, 14 Jun 2019 13:05:48 -0700 (PDT)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com.
 [209.85.166.51])
 by smtp.gmail.com with ESMTPSA id w23sm5948348ioa.51.2019.06.14.13.05.47
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 13:05:47 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id m24so8510299ioo.2
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2019 13:05:47 -0700 (PDT)
X-Received: by 2002:a5d:8ccc:: with SMTP id k12mr4025420iot.141.1560542746773; 
 Fri, 14 Jun 2019 13:05:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190613192244.5447-1-ezequiel@collabora.com>
In-Reply-To: <20190613192244.5447-1-ezequiel@collabora.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 14 Jun 2019 13:05:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U84U0TaC=VUXeggCDJJNkPOJYmOL0JNT1Lf7Gecv-5Aw@mail.gmail.com>
Message-ID: <CAD=FV=U84U0TaC=VUXeggCDJJNkPOJYmOL0JNT1Lf7Gecv-5Aw@mail.gmail.com>
Subject: Re: [RFC/WIP] drm/rockchip: Support CRTC gamma LUT
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_130549_939960_C69EF5EB 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Thu, Jun 13, 2019 at 12:23 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> @@ -1744,6 +1793,41 @@ int rockchip_drm_wait_vact_end(struct drm_crtc *crtc, unsigned int mstimeout)
>  }
>  EXPORT_SYMBOL(rockchip_drm_wait_vact_end);
>
> +static int vop_gamma_lut_request(struct device *dev,
> +                                struct resource *res, struct vop *vop)
> +{
> +       resource_size_t offset = vop->data->gamma_lut_addr_off;
> +       resource_size_t size = VOP_GAMMA_LUT_SIZE * 4;
> +
> +       /*
> +        * Some SoCs (e.g. RK3288) have the gamma LUT address after
> +        * the MMU registers, which means we can't request and ioremap
> +        * the entire register set. Other (e.g. RK3399) have gamma LUT
> +        * address before MMU.
> +        *
> +        * Therefore, we need to request and ioremap those that haven't
> +        * been already.
> +        */
> +       if (vop->len >= (offset + size)) {
> +               vop->lut_regs = vop->regs + offset;
> +               return 0;
> +       }
> +
> +       if (!devm_request_mem_region(dev, res->start + offset,
> +                                    size, dev_name(dev))) {
> +               dev_warn(dev, "can't request gamma lut region\n");
> +               return -EBUSY;
> +       }
> +
> +       vop->lut_regs = devm_ioremap(dev, res->start + offset, size);
> +       if (!vop->lut_regs) {
> +               dev_err(dev, "can't ioremap gamma lut address\n");
> +               devm_release_mem_region(dev, res->start + offset, size);
> +               return -ENOMEM;
> +       }

I'm curious here.  I was always under the impression that you were
supposed to specify all of your memory regions in the device tree.
...but here the device tree on rk3288 says:

vopb: vop@ff930000 {
    compatible = "rockchip,rk3288-vop";
    reg = <0x0 0xff930000 0x0 0x19c>;
    ...
};

...and we're now mapping 4096 bytes starting at 0xff931000.  Is that
really legit?  Wouldn't it be better to put this extra memory range in
the dts?

Hrm, but then I guess you need to figure out what to do about older
device trees.  Do you disable the gamma LUT feature?  ...or do you do
exactly what the code here is doing and just map it anyway?  I guess
you could just keep the code here (and it'll work fine), but maybe in
parallel we should add it to the .dts file and bindings?

---

I will say that, though I don't know much (anything?) about gamma
LUTs, I ran the Chrome OS "gamma_test" program and saw a pretty RGB
gradient on the both the internal screen and HDMI monitor on my
rk3288-veyron-jerry.  Thus:

Tested-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
