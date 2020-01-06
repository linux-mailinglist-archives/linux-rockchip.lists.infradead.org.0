Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0F7131B54
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 23:28:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKwLJcmPojgJLvwIJJnS7fpiOglAtDCX8NisK2Ydfmk=; b=VvoAJau9wLzJiR
	1R7dGN0mNWKZ4J6vvjEtFs4E16MsuTxpQLACaR1AmYFcAte+XLIQPvUgkc9P78Rcsxof30/Gk/j6s
	dtOqqVkYKjPk6DSr4vP02e7j8fosUHKym+5PhHf336azR0n8TEZURUY9ZoGHqayPkqjwwauTks8ep
	S15RGQMqRMjQSZrmGaj+al8c2IC9FBTm6pc9Ie2hVIhLp+LDQv9DojW1eRxqrjpFB949xFsN/ZncL
	FrVEIGUfG4lmxjTWsNEhSXIUJFEAqk7zP8lIplEBZ8XT4sCnU1oeOIvsUbX/B7FrgrZDwIZCTAmBE
	EZoRosoh1dLyjh7pOvlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioarC-0002pd-HA; Mon, 06 Jan 2020 22:28:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioar3-0002hH-ED; Mon, 06 Jan 2020 22:28:10 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B27CA222D9;
 Mon,  6 Jan 2020 22:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578349688;
 bh=rTHOxJUOIChFRf7dTkpIQvZPNS5PI3aBhK4tnTxHTso=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=rbvUGtRkLEnm2FOVFDxL99P5oJz20WQa5tFLv9pzHTPe+VTTlH/BMydAKDogf3P6v
 020hIch7atDLHRQMJFPZzdfn0gazAvFvDqJ+VzTAWs+Vr1pPrrFCIEtYs5qI/EhGtN
 UQhh8l34D8hbUx2wwx3tNTfwVBD5oBP2frJy5vq8=
Received: by mail-qt1-f182.google.com with SMTP id d5so43796468qto.0;
 Mon, 06 Jan 2020 14:28:08 -0800 (PST)
X-Gm-Message-State: APjAAAUVvoy7uRD/yXO3SQ4SunpcbCHo9bQSwpqjPKer0s3Y27F9bf/X
 V/NW8/ley+Pghn8mC39cygbIjapTpUy2CatdjQ==
X-Google-Smtp-Source: APXvYqwVixOr4A1a7oe+76qjMKIzU19osJwUbcFGBZCzSX/7V+QBSOFhX0//2c3Px8FWbPRIeaJstLXgvayduvlSds4=
X-Received: by 2002:aed:2344:: with SMTP id i4mr79020804qtc.136.1578349687943; 
 Mon, 06 Jan 2020 14:28:07 -0800 (PST)
MIME-Version: 1.0
References: <20191227200116.2612137-1-helen.koike@collabora.com>
 <20191227200116.2612137-9-helen.koike@collabora.com>
In-Reply-To: <20191227200116.2612137-9-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 6 Jan 2020 16:27:56 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL25gQZxdN+2ciSj7HLbOjN3OvjY-GrA57m9_y-CdYZLA@mail.gmail.com>
Message-ID: <CAL_JsqL25gQZxdN+2ciSj7HLbOjN3OvjY-GrA57m9_y-CdYZLA@mail.gmail.com>
Subject: Re: [PATCH v12 08/11] media: staging: dt-bindings: add Rockchip ISP1
 yaml bindings
To: Helen Koike <helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_142809_499603_52D2ECC3 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Eddie Cai <eddie.cai.linux@gmail.com>, kernel@collabora.com,
 "heiko@sntech.de" <heiko@sntech.de>, Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jacob Chen <jacob-chen@iotwrt.com>, Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, joacim.zetterling@gmail.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Andrey Konovalov <andrey.konovalov@linaro.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Dec 27, 2019 at 2:02 PM Helen Koike <helen.koike@collabora.com> wrote:
>
> Add yaml DT bindings for Rockchip ISP1.
>
> This was tested and verified with:
> mv drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml Documentation/devicetree/bindings/media/
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>
> ---
>
> Changes in v12:
> - The commit replaces the following commit in previous series named
> media: staging: dt-bindings: Document the Rockchip ISP1 bindings
> This new patch adds yaml binding and was verified with
> make dtbs_check and make dt_binding_check
>
> Changes in v11:
> - add clock-names values
>
> Changes in v10:
> - unsquash
>
> Changes in v9:
> - squash
> - move to staging
>
> Changes in v8:
> - fix title division style
>
> Changes in v7:
> - update document with new design and tested example
>
>  .../bindings/media/rockchip-isp1.yaml         | 193 ++++++++++++++++++
>  1 file changed, 193 insertions(+)
>  create mode 100644 drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
