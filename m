Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EDD1FA28
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 20:43:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XyzxnUmIkVE3b2Vs5i/xrfpmLyumhdyieb4hA/vEcSQ=; b=l7FNd7JiWTgOj9
	O1EFws33F0j6yQZBzPhLzxm+9qdQ0Tc4C59Yqp582RcTuXnWMSoq4SkC0xHzYX1PxOCS+aFQNXPgQ
	60PchVwWteeMF67vEWxNXLvSWcHZHFHr78pGC8QCvvooXVs+N9k/2A3xV1o/c+LA6xaxUCQHhOnwL
	YRsSpkJgcea1voV/2uOPtJzWmkh2wH6MUAeDXH6evfbxon8hKh8PdVj82iKXPqPFutWcC5q1iqCGy
	LjAm6g/YUlBwNrNGyPq8g8qj7IFoqtac3rK/Ul7LBPTorocW/HkBZtBSrICyKIxBIrD4t13ahgetn
	HdeXsaNrBF0+XF3SiGMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQyrg-00015H-9N; Wed, 15 May 2019 18:42:56 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQyrc-00014c-6O
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 18:42:53 +0000
Received: by mail-qt1-x844.google.com with SMTP id f24so851608qtk.11
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 11:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1reD9us9N5mO/PuTxFUyMzUfJf88hZBU0BFrHnbD0Bo=;
 b=TDOw0JqG4MjKV/6oPistcSMXTCPQKhxSgzGJ/dexYJdSGe/daqrONJ1A9P2mr4N9vE
 LNAL0hfNzpBNmX2d16ydeNQrlLloRhFKn763PhLvoNiPF0YpYM3ij0yYm+5NNLBjVUOn
 ygtIVMAFfXUxICL4Geq/Pm0Dg+Cg4ZmOop6JOMf0GkEe+byYEQYqN3SWvLSXOqCrQshi
 P4lgu+IZ/vH/7qZg3HYwntrYlEyu2dHKA1yELq4rFLP36JN7QwfkaKh7fUt4Rf2RC1ju
 5jJvgI9D30JfE4j3f8KNHKrbV3P/j6dM7gdz5yw++DQd5s7tncpv42Se5FAZf3DByu81
 rfPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1reD9us9N5mO/PuTxFUyMzUfJf88hZBU0BFrHnbD0Bo=;
 b=srlPC39JmrPRMKS1EncCL/13vaxmNbojzDQtO9GBab8B7s54cLSb50t9yuax7KdTw1
 4gi/pCKirOzZX00txwafv26IawT+jJkGi65GEwHfSAilGaUbGF5sU5F+Ml+KeB4ehnb+
 7LK1dfa2b9F5wdVLdhL8WdZ/mIBJnDzPX6EAEEevs9w2d0Z112B2N0tsvbGN8D+vo+VP
 2uC0YdZCxL3L8aWAWrcTcbse4WrUCiLblSCDVhctSogLExzjmPhdtlUlpeDWmzGMPrvl
 vFtaGXaJxFniC5/i26hc5P02V2UKsXItXW8Ju1qdA0hW0K09u71t21+3KPTn+wOpcsjC
 yPoQ==
X-Gm-Message-State: APjAAAWl6GyLisukQfWYqc5wA1wEimsAZTH5em+JmTSjPtaP0JcDc3r0
 LA/ZXavKsqZC60vgMp2Kxm+ZXw==
X-Google-Smtp-Source: APXvYqxrY8c666Igwg1R0i0REY1OJW1Ih3Ad8v+ZlbR2LUupNFnSbQkoVPBYFdyzfysek+egkkA9dA==
X-Received: by 2002:aed:2a85:: with SMTP id t5mr8551891qtd.264.1557945769970; 
 Wed, 15 May 2019 11:42:49 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id t63sm1274466qka.33.2019.05.15.11.42.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 11:42:49 -0700 (PDT)
Date: Wed, 15 May 2019 14:42:49 -0400
From: Sean Paul <sean@poorly.run>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/5] drm/bridge/synopsys: dw-hdmi: Add "unwedge" for ddc
 bus
Message-ID: <20190515184249.GA17077@art_vandelay>
References: <20190502225336.206885-1-dianders@chromium.org>
 <20190502225336.206885-2-dianders@chromium.org>
 <20190515182038.GV17077@art_vandelay>
 <CAD=FV=WP-rFDAR28oZg+9DcrXbaYPjFCAD-dV1VR3-3_XDs-3A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=WP-rFDAR28oZg+9DcrXbaYPjFCAD-dV1VR3-3_XDs-3A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_114252_238266_F0795317 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sean Paul <sean@poorly.run>, Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 11:36:33AM -0700, Doug Anderson wrote:
> Hi,
> 
> On Wed, May 15, 2019 at 11:20 AM Sean Paul <sean@poorly.run> wrote:
> 
> > > +                     if (IS_ERR(hdmi->default_state) &&
> > > +                         !IS_ERR(hdmi->unwedge_state)) {
> > > +                             dev_warn(dev,
> > > +                                      "Unwedge requires default pinctrl\n");
> >
> > Can you downgrade this message to info or dbg? Given how rare this issue is, we
> > probably don't want to spam everyone who is happily using dw-hdmi.
> 
> I don't think it will spam anyone, will it?  It will only spam if you
> _do_ specify an unwedge state and you _don't_ specify a default state.
> This seems like something you'd want a pretty serious warning about
> because it meant that you wanted to use unwedge but you didn't specify
> it properly.
> 

That'll teach me for skimming, you're right on, thanks for the correction!

> 
> > Reviewed-by: Sean Paul <sean@poorly.run>
> 
> Thanks!
> 
> -Doug

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
