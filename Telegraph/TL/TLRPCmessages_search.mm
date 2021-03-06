#import "TLRPCmessages_search.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLInputPeer.h"
#import "TLMessagesFilter.h"
#import "TLmessages_Messages.h"

@implementation TLRPCmessages_search

@synthesize peer = _peer;
@synthesize q = _q;
@synthesize filter = _filter;
@synthesize min_date = _min_date;
@synthesize max_date = _max_date;
@synthesize offset = _offset;
@synthesize max_id = _max_id;
@synthesize limit = _limit;

- (Class)responseClass
{
    return [TLmessages_Messages class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 8;
}

- (int32_t)TLconstructorSignature
{
    TGLog(@"constructorSignature is not implemented for base type");
    return 0;
}

- (int32_t)TLconstructorName
{
    TGLog(@"constructorName is not implemented for base type");
    return 0;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::tr1::shared_ptr<TLMetaObject>)__unused metaObject
{
    TGLog(@"TLbuildFromMetaObject is not implemented for base type");
    return nil;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values
{
    TGLog(@"TLfillFieldsWithValues is not implemented for base type");
}


@end

@implementation TLRPCmessages_search$messages_search : TLRPCmessages_search


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x7e9f2ab;
}

- (int32_t)TLconstructorName
{
    return (int32_t)0x989bbbdc;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::tr1::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCmessages_search$messages_search *object = [[TLRPCmessages_search$messages_search alloc] init];
    object.peer = metaObject->getObject(0x9344c37d);
    object.q = metaObject->getString(0xcd45cb1c);
    object.filter = metaObject->getObject(0x834de586);
    object.min_date = metaObject->getInt32(0x5d407234);
    object.max_date = metaObject->getInt32(0xf4d47b51);
    object.offset = metaObject->getInt32(0xfc56269);
    object.max_id = metaObject->getInt32(0xe2c00ace);
    object.limit = metaObject->getInt32(0xb8433fca);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeObject;
        value.nativeObject = self.peer;
        values->insert(std::pair<int32_t, TLConstructedValue>(0x9344c37d, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeString;
        value.nativeObject = self.q;
        values->insert(std::pair<int32_t, TLConstructedValue>(0xcd45cb1c, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeObject;
        value.nativeObject = self.filter;
        values->insert(std::pair<int32_t, TLConstructedValue>(0x834de586, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.min_date;
        values->insert(std::pair<int32_t, TLConstructedValue>(0x5d407234, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.max_date;
        values->insert(std::pair<int32_t, TLConstructedValue>(0xf4d47b51, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.offset;
        values->insert(std::pair<int32_t, TLConstructedValue>(0xfc56269, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.max_id;
        values->insert(std::pair<int32_t, TLConstructedValue>(0xe2c00ace, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.limit;
        values->insert(std::pair<int32_t, TLConstructedValue>(0xb8433fca, value));
    }
}


@end

