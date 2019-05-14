Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 369691D0D9
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 May 2019 22:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vW6dGUUD89X3+5XNXd4Aa0GiXpulEJKOjx2jFBVyp0=; b=NV41v5H4A6lbGM
	lajLDeb1jxkNZw8ChtJEtSUiQ6dMpios/DvoAU/7USFdzcoEKRzhexchpA6b0IO9SaEFf1n310RwE
	pJUzICYrW2TIGFDqcvK8bOlpMnNNWc1kRLuESD7jJ46oxHPf1rF81QuhNuzMNpPZJ3kH8rgKgCXqf
	qpHNAWhVTkx4HZ8iJ4WbzjK7xMN88/qgRFIiKX2Hehhy5ENyXNHyX9kZWgzCPdp80cCqbhsFOhUyh
	nQgeRqXvNAOMUfRGuU9CwIZdo1RwPnoh7i/DGtHfkx6rJTpygArG/Th4l//kOi+oLlo7xFdCnh0JR
	Db5X1rXMqYMr9iNLeJJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQeMP-00074g-P4; Tue, 14 May 2019 20:49:17 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQeMM-00074G-Qs; Tue, 14 May 2019 20:49:16 +0000
Received: by mail-oi1-f195.google.com with SMTP id f4so176513oib.4;
 Tue, 14 May 2019 13:49:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6T3Ip6O04LTKLd5qWK9Ww230fOKy3msDw8KUYfWmvPM=;
 b=GqPVF7kX0mIZeuD0M6yJjaJdSZAkntExfBWVGa/U83cgJ5anJB9Fa1zXv5wrevc7uL
 eyfXSU0lY2elE9T93dAjHVrZv7K2IDTGzDla4Zdw/k5C6+4bbLOy7PLnrCmtGjcOjWZ+
 BqUImNK8cQ/dRD28kvP1TrdsKZT9XtIZNVOHEIHiH2h0VXDrXEPqVicCoRag5FmmcKzk
 EhJ2seOhS3MILwg7hj7PkJo4Fxo6ms1pQXu0j4cMrTXF0TTtqjze1QO+sg3r3MtsbfWA
 s4yHAK5NVljVUlTafktkLfYCWvtalnAtPDoPkEVAdSoACryGdGro4ocYEFZl61Efm3XX
 M5pA==
X-Gm-Message-State: APjAAAXvqV/PloyGY0lqIJO3WT6OPMLjNEOmtZcol2xwv1rAdSD/CqWn
 tgJ3IiK7yruTfIIyBkjfwzu0in8=
X-Google-Smtp-Source: APXvYqw9r62Myv1ZK5vENIP2ad0ZFC9OJdOjoMmtmV5w3i5Ay9PLbIuaxAG0cmS6uL2JJgGZGo7oTQ==
X-Received: by 2002:aca:7255:: with SMTP id p82mr372346oic.119.1557866953685; 
 Tue, 14 May 2019 13:49:13 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o124sm1524501oig.23.2019.05.14.13.49.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 13:49:12 -0700 (PDT)
Date: Tue, 14 May 2019 15:49:12 -0500
From: Rob Herring <robh@kernel.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/5] dt-bindings: drm/bridge/synopsys: dw-hdmi: Add
 "unwedge" for ddc bus
Message-ID: <20190514204912.GA25548@bogus>
References: <20190502225336.206885-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502225336.206885-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_134914_867962_F45D6A53 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>,
 Andrzej Hajda <a.hajda@samsung.com>, mka@chromium.org,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu,  2 May 2019 15:53:32 -0700, Douglas Anderson wrote:
> In certain situations it was seen that we could wedge up the DDC bus
> on the HDMI adapter on rk3288.  The only way to unwedge was to mux one
> of the pins over to GPIO output-driven-low temporarily and then
> quickly mux back.  Full details can be found in the patch
> ("drm/bridge/synopsys: dw-hdmi: Add "unwedge" for ddc bus").
> 
> Since unwedge requires remuxing the pins, we first need to add to the
> bindings so that we can specify what state the pins should be in for
> unwedging.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
>  .../bindings/display/rockchip/dw_hdmi-rockchip.txt         | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
