Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3C41C596D
	for <lists+linux-rockchip@lfdr.de>; Tue,  5 May 2020 16:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=otzxpvsongdOdkfNGRPoTvdK5VjQtfCNpMmySh+lqXk=; b=kRxkm8axeGjsDR
	1yfrtIUrmMuu6xXMnJ5lCu3XOetK/Lmd8RVo0EHUJ4YiC0Co9zO4zbo+0rvT5YQ63ZoZSDIltsADx
	sq+4rW4qULqHSc4XfqWyx1BmvjYRRrLe/c3oIqh+QPJaSPKGTjGtEuSFKkiOhU6AelEH96SYoaGbn
	Y9vz/63lkGAek0p+KqxNxYFVFLfPpTkw6BsAc9BRKo8qIfCZcymZFU4qMWItKm2i3Dah1gna7oXMO
	UROxyT035lDNuozUTJzZPyAwkbd6ZyCBQhy/JWVY0w4F9bQD3oyD05XzLLQj2dApqS7IpKvamBkQt
	E0H64klIv11lEHTMD1HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyXw-0001JB-3u; Tue, 05 May 2020 14:27:44 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyXs-0001Ic-BP
 for linux-rockchip@lists.infradead.org; Tue, 05 May 2020 14:27:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 84EAE2A1EA1
Message-ID: <ac6e162a24a8e2b2180b1a743e5ecd9a2023ac65.camel@collabora.com>
Subject: Re: [PATCH v3 1/3] media: rkvdec: Fix .buf_prepare
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 05 May 2020 11:27:30 -0300
In-Reply-To: <CAAFQd5A458E8iqwakKTDEyTHC+NYY-M1SaTS3m0MARwPaRyOuw@mail.gmail.com>
References: <20200505134110.3435-1-ezequiel@collabora.com>
 <20200505134110.3435-2-ezequiel@collabora.com>
 <CAAFQd5AWZFoPk2YTp2k8M7LvJshxw46-z+wK2VoM9EzB2CqiFA@mail.gmail.com>
 <c29fcc922a4917ac695043e605973ba9649f9c9b.camel@collabora.com>
 <CAAFQd5A458E8iqwakKTDEyTHC+NYY-M1SaTS3m0MARwPaRyOuw@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_072740_518981_D1E05689 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 2020-05-05 at 16:05 +0200, Tomasz Figa wrote:
> On Tue, May 5, 2020 at 3:59 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> > On Tue, 2020-05-05 at 15:56 +0200, Tomasz Figa wrote:
> > > Hi Ezequiel,
> > > 
> > > On Tue, May 5, 2020 at 3:41 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> > > > The driver should only set the payload on .buf_prepare
> > > > if the buffer is CAPTURE type, or if an OUTPUT buffer
> > > > has a zeroed payload.
> > > 
> > > Thanks for the patch. Just one question below.
> > > 
> > > Where does the requirement to set OUTPUT buffer bytesused to sizeimage
> > > if the original bytesused is 0 come from?
> > > 
> > 
> > If I'm reading english correctly, it's here:
> > 
> > https://www.kernel.org/doc/html/latest/media/uapi/v4l/buffer.html
> > 
> > """
> > The number of bytes occupied by the data in the buffer. It depends on the negotiated data format and may change with each buffer for compressed
> > variable size data like JPEG images. Drivers must set this field when type refers to a capture stream, applications when it refers to an output
> > stream. If the application sets this to 0 for an output stream, then bytesused will be set to the size of the buffer (see the length field of this
> > struct) by the driver. For multiplanar formats this field is ignored and the planes pointer is used instead.
> > """
> 
> Okay, thanks. I wonder if this shouldn't be handled by the core,
> though. Especially given that the document refers to the length field
> specifically and not the sizeimage set in the format.
> 

Yes, either core or helper, this definitely calls for a generic solution.

Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
