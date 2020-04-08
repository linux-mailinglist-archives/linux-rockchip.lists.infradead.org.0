Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B8E1A192B
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Apr 2020 02:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spoBAwIviw6Us4+PaFvxOyLu+fieCZAbZYlvBRn+V1A=; b=QF4u1pq5GVfs4h
	FcU/7+tvf0NyX8OjX9XvDKUuOFu6F9hRSmyBbuR1FJ2hAUcD/C9k4QDZIha+iixbnu01NLvkLiHJd
	+JeJWdjRhPLIADu+t7jjc2MGat7IrUeQ0OqMC94085IfOOYRiUoerLfD+SBD4kn0KrI74wWbtehDO
	cr6k1sR1e35fgAtxtbhRckSurlkdadU+ENXbwSlXsbKaJMSXoFW6MRe9nMNmlDzTp7KEpA5UZzE95
	VXVT8y1JXwAbv9r1rqiEiZFC/WftEOZmyO8e7CbvIre0MltY8sGY8MY1qHxMX4Yzz8d/XVKPTUfbw
	Z13txdLRsugikjt4BhKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLyNU-0001bu-VW; Wed, 08 Apr 2020 00:15:36 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLyNS-0001aW-Gx
 for linux-rockchip@lists.infradead.org; Wed, 08 Apr 2020 00:15:35 +0000
Received: by mail-lj1-x244.google.com with SMTP id i20so5710155ljn.6
 for <linux-rockchip@lists.infradead.org>; Tue, 07 Apr 2020 17:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=wBmmkv5EbGKYUNkzEYnIvZ802Zpc4/nWXvJbm9vTzy8=;
 b=eQF82/r2ns4IEQGeT7nrbn5xT5aRBAStDla9TU6NBrKxHh7t30Ap/GL+oVxfX5SO6n
 hrq8w/pWG6CrC+hXGF4fOQN15Vzpa1OBgCPURdTOZlOcDb3zOxT0gXre/74ytrRrU650
 kYEgR36RQZJqjLGY3uq0M8pvBe3MhxzhSrAj4S6Q6ZM3vlSGM+pz+7+VdhqrLIHgmcin
 QUf8OjddvEtPnRpNdqz3gCyB1Wf4NYPiSJg0ub28hruqrAUIzvICaNtuLOxCnzkQXq9p
 xnWceezjkOQeLkChvejKfezYXvEF47geoF/OawZloixqeG4hNmRoUzCl/P40j7g7fuw5
 NENg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=wBmmkv5EbGKYUNkzEYnIvZ802Zpc4/nWXvJbm9vTzy8=;
 b=dU8FXxBbYXIH4iT91jxt5Foo8TvP6F7xwTSU20dHL28CvfXlzcBfVIOkYm8iUM1Jgp
 Wi3fF4cU2b9NUShZp+fmwBM9HF47K46OPA54je+HyXG1tUCXRpX68P8Bd2dvM3jbgupp
 /n0QrPrY/Suxddplrp9ECFgqMoeTsmdTmVuRT5V12FeRct6hami9DsmLi5u3ghyzAqap
 NlIQ+aFuNOG1ZTpM5NiDaYQOHL1I+o+18mKi9WmH2qnENjdpcloobZHr1Y7WsQK7flsZ
 A0ye18tkk1+EKGDZz1XApUaraOWFUnhF0uPHHC7HmbiMiC6bzWArVpnj+gl3rvVt8i4Q
 BOvw==
X-Gm-Message-State: AGi0PubzZcSW1FDXizrw+t5SvIwHOc/WBaaZXXFA5gSplr4bsqRzDqTR
 XqQ+RYzQ3oZR1DhmKwOPwuZlMA==
X-Google-Smtp-Source: APiQypJUuiJTo36iazCjmHoOP1Cj3Ejl1xcr2/9UhmAcs+0WuYL6cL2nXv/XBLNWbQZ0w17jLaqViQ==
X-Received: by 2002:a2e:8ec2:: with SMTP id e2mr3120283ljl.252.1586304929998; 
 Tue, 07 Apr 2020 17:15:29 -0700 (PDT)
Received: from localhost (h-200-138.A463.priv.bahnhof.se. [176.10.200.138])
 by smtp.gmail.com with ESMTPSA id 133sm12464946ljj.91.2020.04.07.17.15.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 17:15:29 -0700 (PDT)
Date: Wed, 8 Apr 2020 02:15:28 +0200
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 0/3] media: add v4l2_pipeline_stream_{enable,disable}
 helpers
Message-ID: <20200408001528.GI1716317@oden.dyn.berto.se>
References: <20200403213312.1863876-1-helen.koike@collabora.com>
 <20200407193615.GG1716317@oden.dyn.berto.se>
 <4be824ea-61e2-4624-4880-fccb4ff804cd@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4be824ea-61e2-4624-4880-fccb4ff804cd@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_171534_586443_E9FB8187 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mchehab@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com,
 skhan@linuxfoundation.org, kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Helen,

Thanks for your reply.

On 2020-04-07 21:05:03 -0300, Helen Koike wrote:
> No, this patch only removes the requirement of patch 1/3 in the series
> "vimc: Allow multiple capture devices to use the same sensor", since the =
counter
> is being added in the core, so it won't be required to add it for each su=
bdevice.
> The other patches in that series are still required.

OK, just checking. One step in the that direction at least :-)

-- =

Regards,
Niklas S=F6derlund

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
