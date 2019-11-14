Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11176FBDA8
	for <lists+linux-rockchip@lfdr.de>; Thu, 14 Nov 2019 02:52:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frfZa+yovUFWq1YY7TQBvHuicQ1rqJDV9hoL3AM5ADw=; b=f7/PzRT0n6BMUc
	Hea+4/Rlkoc96PIv1FnuYpnp92R6UxlFEqpVY4nu+EQWy2FEd2FpHg5gslF/vSPhH11CHRoERvozh
	35q7oBhvOTBR4OkuFT4UwbRwzbbS3lxZs3W9xIdO/KkgaZHaFJNwInakTDHnrgK/8oy6FDuga9mAU
	m+Qgv9qUW8+CMzEfujk9c1nRQFcEWho9iyp6hl/cDXmKe1R2DY764PW+2xMC9QhLQub89uOO/xd69
	DEEMeb/3+qGfRMFlsrDUI4tZPHc+pcmH9ZaUhfj3PRZJBbsuQYGDHeVb6/8wFoOH78T0pWe7GiiLk
	FjL7dQCMLY2caQ1GqQrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV4Iw-0004x7-6j; Thu, 14 Nov 2019 01:52:14 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV4Il-0004oI-Es; Thu, 14 Nov 2019 01:52:04 +0000
Received: by mail-ot1-f67.google.com with SMTP id r24so3466375otk.12;
 Wed, 13 Nov 2019 17:52:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Tyy/iJPlcDNJd/yf1nrHt+l6qJbLFsBGezCH8MwXmmM=;
 b=ITaOSR7QvXvar1MjhbGlfIGJ9rrpYUmD33LmsPzycIaX3fL79uiEsV8SWR6JpdVegT
 DHplcKdzjIMAsDBciPs/x71feLbyov2UVgMACvTxzWcc1zYOboZYBpgO6PUjRUkkJO8C
 4Tqg4LUk6mALTykpmWWepdNiQob3q8TDHJwdierdKkSlFxGkfPURfd3P9aaVudyqzYz6
 pq/lUGJ1kLY9E1RgFVcIbqAG2kJyIAVhMl1IIKkLXuWLZFaiB/36pxkB1LTlH0UnKlL4
 yaKFECvZcXkEoSzAwmi5cneHWZs747GFHP2aoT4uXsNKIbcWmEIucWhz3Vi0vKksLnhD
 RjCw==
X-Gm-Message-State: APjAAAVEL+dKganBIwsAk7o5x8cdC7hSD27z94OQRTe46oANPJ7Qp/dF
 rpqdF9Xsei/aJZeBJosimA==
X-Google-Smtp-Source: APXvYqwo1UUZAelKrLAwuSh6trS8OhtcFC9X3B8JtWLGubj/w8/T0NRDlQJnITZxmL8ShTtFhqgOQQ==
X-Received: by 2002:a05:6830:1d4d:: with SMTP id
 p13mr6025041oth.286.1573696322369; 
 Wed, 13 Nov 2019 17:52:02 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o203sm1334139oia.4.2019.11.13.17.52.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 17:52:01 -0800 (PST)
Date: Wed, 13 Nov 2019 19:52:01 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: display: rockchip-dsi: document
 external phys
Message-ID: <20191114015201.GA22126@bogus>
References: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
 <20191108000253.8560-3-heiko.stuebner@theobroma-systems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108000253.8560-3-heiko.stuebner@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_175203_496647_1F05E230 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 heiko@sntech.de, narmstrong@baylibre.com, linux-kernel@vger.kernel.org,
 jonas@kwiboo.se, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 philippe.cornu@st.com, yannick.fertre@st.com, a.hajda@samsung.com,
 robh+dt@kernel.org, Laurent.pinchart@ideasonboard.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri,  8 Nov 2019 01:02:50 +0100, Heiko Stuebner wrote:
> Some dw-mipi-dsi instances in Rockchip SoCs use external dphys.
> In these cases the needs clock will also be generated externally
> so these don't need the ref-clock as well.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../bindings/display/rockchip/dw_mipi_dsi_rockchip.txt     | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
