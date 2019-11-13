Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7E2FB4A3
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 Nov 2019 17:06:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPNzqO/2R4IQYfqtfVr2U9DWXDQIPVpUC4Py1PVuqns=; b=kah1Q/mL73ne1U
	8gYzkWHPeVonTLcBO8bob7d6bSCyWkK6aSWdl0DbS52t+stk1Of49ezVySNsfx6S2dLm6hmzQyMjo
	i8Tw4SJDs09Wya8J4zMEZphyN2NLlXVKiPJWjyT+MfmkYDliCh8RkMpfaFPSRxTWdeS2eJOMF7hSH
	MhGcaLsEvGe9eIXzmEHFo6SJkXieZKEoUktKcyGfFxDOlvINbcvOJKU1AZJgpW89BWNQ/hbUUKgRK
	6bdudfqYRoswMrYWjuUnt6GJvYbMlNRytqp1LcRTgiJolKVSmj7P5yApdCE8CJOe8mX5y7ZxCUNzv
	FMnxdSuzIC1d88v4gS0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUvAM-0003bU-7K; Wed, 13 Nov 2019 16:06:46 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUvAB-0003Tp-Np; Wed, 13 Nov 2019 16:06:37 +0000
Received: by mail-ua1-x941.google.com with SMTP id l38so825719uad.4;
 Wed, 13 Nov 2019 08:06:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1ayLEgLCWpr2v/YpRT1vekWIlyB7F5pG92dGazdBvwI=;
 b=G0C2zq6m15OVUAh+WFhsjZYXXzcdOByoFghlCOloPCUxpwsOe48d6TWKiBYF1Jt+3P
 pCkyi8gtQTCFIBPO9DwTV6c0WxkptrtOWz4iYPnK/cnKPm7I5zvj+dxET+BVtJ1DQpne
 xvFFiYgEs8mmbZJfAKBvvDnvS95WxPpEuPkR3s9WkN17IYO9Pb5tGG3tSajwy1byyD4N
 F16i2K46Gs2g/bj6Gi2+PLQDxaHl6IMmz66pxEDl3gH6mDW5O41D81GUalCuv66KK2kl
 pzplG0H99Acg6QnE2CyrhUpnwJAaLbkNCMS71/7karx00Scg1v8aAwzEcypXqj1ia3qp
 NQ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1ayLEgLCWpr2v/YpRT1vekWIlyB7F5pG92dGazdBvwI=;
 b=o65xQjDqpGkmcQXY+GOTHxLMba9lk8Lc7P6QZshjpLRX5fNb7K8DUYDQCl9wca0YOV
 53PWLiHqFudf2SfW9TEMGdNi+dMovCwKoA7n/+gAUYusykXq36oUxs8seq6sxWQMSgc7
 Z+nYF3WbXbBvZzoZuevK7WUKPTKI7jnXwgu+rqFosB5fSnFftqPmuGuwRba6ISMq3K0G
 3gC6zi4ZiDzTb8i9JWxMDmHphSLkk300S3gtZa7ghzFfaTYp92G4lL6SaWLHiDAvEmxr
 Z27Gyl0cJDlbnxDh81AO2WNMail6AvpyFRv+lgAS3HK+8xNBpczREeL1y5pD8lnkEmz6
 ooxA==
X-Gm-Message-State: APjAAAV3uN68eGtiwmxF5KDZfHdrw/vcJ95zC+j2Fem79WQvtKo7DMO2
 jMBNTt+pyOtYIigu0DCpaaB/6tipLIDd4QeQyBXfgCYc
X-Google-Smtp-Source: APXvYqyzUYrhlIoEugbzPslmvADNMfF2xvcbUO3zTaYeh1c05O5Pyx2U0QDgD4P1JCUm3NiogsNTTpD6/UoykImOIHY=
X-Received: by 2002:ab0:14e8:: with SMTP id f37mr2288342uae.64.1573661192697; 
 Wed, 13 Nov 2019 08:06:32 -0800 (PST)
MIME-Version: 1.0
References: <20191106163031.808061-1-adrian.ratiu@collabora.com>
 <20191106163031.808061-5-adrian.ratiu@collabora.com>
In-Reply-To: <20191106163031.808061-5-adrian.ratiu@collabora.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Wed, 13 Nov 2019 16:06:05 +0000
Message-ID: <CACvgo506P+qNUg8vbpxY0_E7AAwJMHseM=Jwb3c2K8zo-v-2qQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] dt-bindings: display: add IMX MIPI DSI host
 controller doc
To: Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_080635_800207_BF3C70CA 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.l.velikov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martyn Welch <martyn.welch@collabora.com>,
 Sjoerd Simons <sjoerd.simons@collabora.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 6 Nov 2019 at 16:31, Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
Please drop this one. I'm not that experienced in DT to provide
meaningful review.

Actually, I've just noticed that respective maintainers/lists are not
CC'd on the series.
Please use the get_maintainer.pl script got get the correct info.

Personally, I read through the output, adding only relevant people as
CC in the commit message itself.

In particular, I don't think adding the "maintainer: DRM DRIVER" or
the "ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" are required. On the
other hand "DRM DRIVERS FOR FREESCALE IMX" and "OPEN FIRMWARE AND
FLATTENED DEVICE TREE BINDINGS" seems pretty accurate for what you're
doing here.

HTH
Emil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
