Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4FB168D2
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 19:07:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Eid6oBkTVW9TcTadF4VJ3+iftCBbWwDZ0UnIQ0Xr+w=; b=cb6GjuDjN2B+o/
	y9jMIqhxrWizoqDEVTdO2Nfv5qLoWmf1/rBm7n3SPeOsfQZKp4hpTXDKBawNsn6oOenavSzPmFxm7
	sdqoZvhvL0H2HafS37jyD8PWo+EXuGyjCRfDIhOs9N5qsqMjkwjTrRO4w4ANp6UAfPINfLeK2iBms
	Aay8Q2EVYNd58bj7GHUDQDzCA8zSBZ/2rHGgEytY2xXEiT4+WMA6zIwPzuiNnriED9hHcHsqSx5vS
	eVbrjsfuXd1w8y3V9+L448krqpc/sr0gqWmtG+DvF9oAYLTmDwajlUZ2m3EoAm036dbM3r8tfhKhn
	ePw2H47qWfi/hYIYNW1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3Z7-0003C6-CH; Tue, 07 May 2019 17:07:41 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3Yz-00035U-9U; Tue, 07 May 2019 17:07:34 +0000
Received: by mail-oi1-f196.google.com with SMTP id u3so7139944oic.12;
 Tue, 07 May 2019 10:07:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=WHdJL4zgiCckMC9QTbgttbrInYfGHIvnfQMkwfBuMjg=;
 b=EI/sMRoJwAxz0cjHcG0ObA0mYU/V1dMJ/VoTfg1XcxUHz8ON8jWsdcFgrXUVP35uuc
 v4j11/7ddWrQe+5RJQ7J0RVH/uVognMtV7ZtQwjwsPbBsNDml+DTguZ/gOWfHGI2qAC8
 pi8j0YBsuslybF92ShXeDahyzw9JiG0bcpLE2enZgjkqzCl+4I5LYF4pROGXEUz4stI2
 ye4XYGfc/dV5+P4seCqiNNAxXP/H8uF9vZVaX560bLnAHP90UzgBkhkaS3LYzAHAKvhT
 u/EYXfSbFBYVpqZ8R5obYxV18Gtwb8LTLwqRtJ4IXGfbMACmEcIR1EfQRiljoiGYwdtV
 itzQ==
X-Gm-Message-State: APjAAAUpjOCsE8lMkUGIeIdOvCaMyYte2YGtm4cTFsRcs4u2qUGhfn1V
 9xRLBDJYjgKnwM7D8zgI5Q==
X-Google-Smtp-Source: APXvYqyA1uFJ8vFfpoHclW92quG/D9l+3QhTPkFnfAtbJnqtWPuQwg6x6WkNCHZJuBkEIO3LopS+bw==
X-Received: by 2002:aca:4dc2:: with SMTP id a185mr879561oib.50.1557248852239; 
 Tue, 07 May 2019 10:07:32 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v6sm5331500otk.53.2019.05.07.10.07.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 10:07:31 -0700 (PDT)
Date: Tue, 7 May 2019 12:07:30 -0500
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Ga=EBl?= PORTAY <gael.portay@collabora.com>
Subject: Re: [PATCH v5 6/6] dt-bindings: devfreq: rk3399_dmc: Remove
 references of unexistant defines
Message-ID: <20190507170730.GA3315@bogus>
References: <20190502175820.25382-1-gael.portay@collabora.com>
 <20190502175820.25382-7-gael.portay@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502175820.25382-7-gael.portay@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_100733_333399_ECFD3422 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
 Derek Basehore <dbasehore@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-pm@vger.kernel.org, Brian Norris <briannorris@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 =?iso-8859-1?Q?Ga=EBl?= PORTAY <gael.portay@collabora.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-rockchip@lists.infradead.org, Randy Li <ayaka@soulik.info>,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu,  2 May 2019 13:58:20 -0400, =3D?UTF-8?q?Ga=3DC3=3DABl=3D20PORTAY?=
=3D wrote:
> Those DDR related defines do not exist. Replace their references with
> their numerical constant.
> =

> Signed-off-by: Ga=EBl PORTAY <gael.portay@collabora.com>
> ---
> =

> Changes in v5: New
> =

>  .../bindings/devfreq/rk3399_dmc.txt           | 73 +++++++++----------
>  1 file changed, 34 insertions(+), 39 deletions(-)
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
