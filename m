Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6189F5E0E5
	for <lists+linux-rockchip@lfdr.de>; Wed,  3 Jul 2019 11:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QvCwqeWQYZg24V5x21OtwsX7SW358/VAAHWlJpFaTSs=; b=W+RRmOF1Pxgsvi
	FwfmuHjErZyKi3d6pBQ4QQ9ogI26x079WV7A9kDzW41lknb+UJ6Sxd+x8IZaqYkAugfiijFU0ezpq
	Q4VKUBhb7xBADCiE5rBNqHpmFNJZWlTBcIE9vdVTDC4KSbh4cvnQ9FuRDvVhl9BRI5bNn0cIFAjdz
	OyKHo5l2mSfvlM6/jrlcHrLdZCO+zGAjmNxBfPnZWj0FIv/cCmL/3nn6EFenmd3RAJRHK8bpEeg3s
	Dax5pPbPB/KcQL7ONNNnsn+bUPGa30GvCrmaeVC+JFvrqmXqg0SO+lljwomoyjYkcL0yKBLRnhBdj
	+nBl2+RrBg4IojDCHLRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hibQe-0005eY-6f; Wed, 03 Jul 2019 09:19:52 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hibQZ-0005dA-Fr
 for linux-rockchip@lists.infradead.org; Wed, 03 Jul 2019 09:19:48 +0000
Received: by mail-ed1-x542.google.com with SMTP id m10so1350008edv.6
 for <linux-rockchip@lists.infradead.org>; Wed, 03 Jul 2019 02:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AVFrMDI+TIQ3EAjz/kn7jqtoTqpSeOgOSw47GSuS08A=;
 b=QFOEFOiXZa43v38UtHueJUcH0w9gOYmIWxCxcVuK3nnhCkiBHsHLpKr5NA2tsftAxe
 C0V1gkqEBj6kU/wKk7dtVKcDF2g6/jxsek3TMFLLFbvZ+38n8KMQmmXWDOfJXnwZewvj
 lyVZbNq9k7tamV2vzKKpHClJWsyldODbNmgqg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AVFrMDI+TIQ3EAjz/kn7jqtoTqpSeOgOSw47GSuS08A=;
 b=Zx42BMI4Xp0CVVVIrOJ/GW0/QctORDIDc4I1XcL0TCBjB9kVBmSlej73y5Qtai1gQ5
 hWHJU2iUy5xlpT2IsvuelajhzaOFp7AdvTdAfeYpaVhMEHROAgUVR0kHN8ZKo2K6RDo4
 Dlf3oWpn55FUJ7lwLZVI6a5eayIHUWzOsWS8eryi+IaO3Q4Y0hjDf2ggD8Ls6KN35/f1
 1vMpVbVZxiT3bfGNBFJbvZBqjQ8NyAlhGfnKgwnZNqem4hvMDuvti5sPzE8+3Q+WWleI
 HkJ8pYPcZehuPW4gUI+DxmHp//VzwJ0CNmbWADEgMejt2374BpJz4fji475PIKK2XFPq
 1fng==
X-Gm-Message-State: APjAAAV+Ce8N+5WjSo4Ut1EF3F9FzfV98dEALCW/JjajyDJhWQyi2EIw
 /SrjFcngthKwbilNasATbL23Mo/pE3gmrg==
X-Google-Smtp-Source: APXvYqyqpAZnkmv2gcjjgopoF51LgTJfbH43tTY3RdD48UVd7Run94j36tVLxgpEruRtDTzBBTsTLg==
X-Received: by 2002:a05:6402:64a:: with SMTP id
 u10mr41467143edx.35.1562145584409; 
 Wed, 03 Jul 2019 02:19:44 -0700 (PDT)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com.
 [209.85.128.52])
 by smtp.gmail.com with ESMTPSA id d25sm341203ejb.71.2019.07.03.02.19.43
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 02:19:43 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id 207so1418833wma.1
 for <linux-rockchip@lists.infradead.org>; Wed, 03 Jul 2019 02:19:43 -0700 (PDT)
X-Received: by 2002:a7b:cd04:: with SMTP id f4mr7659213wmj.64.1562145583298;
 Wed, 03 Jul 2019 02:19:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190702170016.5210-1-ezequiel@collabora.com>
 <20190702170016.5210-2-ezequiel@collabora.com>
In-Reply-To: <20190702170016.5210-2-ezequiel@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 3 Jul 2019 18:19:32 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CG3LuT3tq40USFw4D7gkN_zP1j-YY+9JTqxoBjrGOwJg@mail.gmail.com>
Message-ID: <CAAFQd5CG3LuT3tq40USFw4D7gkN_zP1j-YY+9JTqxoBjrGOwJg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] media: uapi: Add VP8 stateless decoder API
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_021947_551149_646B99C9 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: fbuergisser@chromium.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Ezequiel,

On Wed, Jul 3, 2019 at 2:00 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> From: Pawel Osciak <posciak@chromium.org>
>
> Add the parsed VP8 frame pixel format and controls, to be used
> with the new stateless decoder API for VP8 to provide parameters
> for accelerator (aka stateless) codecs.
>
> Signed-off-by: Pawel Osciak <posciak@chromium.org>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> --
> Changes from v1:
> * Move 1-bit fields to flags in the respective structures.
> * Add padding fields to make all structures 8-byte aligned.
> * Reorder fields where needed to avoid padding as much as possible.
> * Fix documentation as needed.

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
