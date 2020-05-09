Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445C21CC173
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 May 2020 14:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0y2+sj5e+brcFb9HjhjjpHQYL19ZpQU2s3ENQ6Lh4g=; b=pECCtoAGRmv533
	BecD7o7jLb6hQ/ajGPBYc/US1LFcvRaMYq90vgCTcwwpgycVziBYFnYP/lKE1SRkcN/TLuONV7XZ1
	q94IbCe2nZ246BOlXDf6qNQb2/Tvkre3DCvfDgI7oXqu9MqrkS0BmxRiyAV9Ox1OhUnnbH/63A0Yp
	TB+R6EtXBevdJeow228jtVaGdhfiUjELJ9JVmvCArnzikXa/jR8n4RTCLBIARjBOQHZUqEZTZlX7Z
	lWx4sN5fNRdat+Bi89sDFdvsIl+8V1aTEzUUbN8PFgCwSIIFtAM7PkG/9rZ6HLpNn0PZ/qaxP3sRj
	nZpXUDBdvWJbW85GJD7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXOxb-0006Fx-Fc; Sat, 09 May 2020 12:52:07 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXOxY-0006FN-8W
 for linux-rockchip@lists.infradead.org; Sat, 09 May 2020 12:52:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 13BBF2A2CA6
Message-ID: <458fcdc1d934c12a81a3bd9728cdca9cd2ad874c.camel@collabora.com>
Subject: Re: [PATCH v2 7/9] media: MAINTAINERS: rkisp1: add path to dt-bindings
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Helen Koike
 <helen.koike@collabora.com>, devicetree@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Date: Sat, 09 May 2020 09:51:49 -0300
In-Reply-To: <9a95d227-9592-2c5c-fe6d-dff9b84f4292@xs4all.nl>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
 <20200403161538.1375908-8-helen.koike@collabora.com>
 <9a95d227-9592-2c5c-fe6d-dff9b84f4292@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_055204_432920_60041EFD 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, karthik.poduval@gmail.com, robh+dt@kernel.org,
 jbx6244@gmail.com, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Hans,

On Fri, 2020-04-17 at 09:18 +0200, Hans Verkuil wrote:
> On 03/04/2020 18:15, Helen Koike wrote:
> > The Rockchip ISP bindings was moved out of staging.
> > Update MAINTAINERS file with the new path.
> 
> Shouldn't there be a reference to Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> as well in MAINTAINERS?
> 

Indeed, and I can take care of that later. I was planning to move
this PHY driver out of staging, but was waiting on patches 4 and 5
of this series.

They seem fine, would you mind picking them?

Thanks!
Ezequiel

> Regards,
> 
> 	Hans
> 
> > Suggested-by: Johan Jonker <jbx6244@gmail.com>
> > Signed-off-by: Helen Koike <helen.koike@collabora.com>
> > ---
> > 
> > V2:
> > - This is a new patch in the series
> > ---
> >  MAINTAINERS | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index d66ac41ef5872..726044b84cf23 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -14303,6 +14303,7 @@ M:	Helen Koike <helen.koike@collabora.com>
> >  L:	linux-media@vger.kernel.org
> >  S:	Maintained
> >  F:	drivers/staging/media/rkisp1/
> > +F:	Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >  
> >  ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
> >  M:	Jacob Chen <jacob-chen@iotwrt.com>
> > 
> 
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
